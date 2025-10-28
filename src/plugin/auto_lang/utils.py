
# Imports
import re

from beet import Context, TextFileBase
from stouputils.decorators import simple_cache

# Prepare lang dictionary and lang_format function
lang: dict[str, str] = {}
file_counter: dict[str, int] = {}  # Track counter for each file path

# Regex pattern for text extraction
TEXT_RE: re.Pattern[str] = re.compile(
	r'''
	(?P<prefix>["']?text["']?\s*:\s*)             # Match the "text": part
	(?P<quote>["'])                               # Opening quote for value
	(?P<value>(?:\\.|[^\\])*?)                    # The value, handling escapes
	(?P=quote)                                    # Closing quote
	''', re.VERBOSE
)


# Functions
def extract_texts(content: str) -> list[tuple[str, int, int, str]]:
	""" Extract all text values from content using regex patterns.

	Args:
		content (str): The content to extract text from.

	Returns:
		list[tuple[str, int, int, str]]: List of tuples containing (text, start_pos, end_pos, quote_char)
	"""
	matches: list[tuple[str, int, int, str]] = []
	for match in TEXT_RE.finditer(content):
		start, end = match.span()
		value: str = match.group("value")
		quote: str = match.group("quote")
		matches.append((value, start, end, quote))
	return matches


@simple_cache
def lang_format(ctx: Context, text: str, file_path: str = "") -> tuple[str, str]:
	""" Format text into a valid lang key.

	Args:
		ctx (Context): The beet context.
		text (str): The text to format.
		file_path (str): The file path for generating the key.

	Returns:
		tuple[str, str]: The formatted key and a simplified version of it.
	"""
	# Generate key in format: <namespace>.<file_path>.<counter>
	if file_path:
		# Normalize file path: remove extension and replace slashes with dots
		# Also replace namespace colon with dot
		normalized_path = file_path.replace("/", ".").replace("\\", ".").replace(":", ".")
		if normalized_path.endswith(('.mcfunction', '.json')):
			normalized_path = normalized_path[:-len('.mcfunction')] if normalized_path.endswith('.mcfunction') else normalized_path[:-len('.json')]
		
		# Get or increment counter for this file path
		counter_key = f"{ctx.project_id}.{normalized_path}"
		if counter_key not in file_counter:
			file_counter[counter_key] = 0
		file_counter[counter_key] += 1
		
		key = f"{ctx.project_id}.{normalized_path}.{file_counter[counter_key]}"
	else:
		# Fallback to old format if no file path provided
		text = re.sub(r"[./:]", "_", text)   # Clean up all unwanted chars
		text = re.sub(r"[^a-zA-Z0-9 _-]", "", text).lower()
		alpha_num: str = re.sub(r"[ _-]+", "_", text).strip("_")[:64]
		key: str = f"{ctx.project_id}.{alpha_num}" if not alpha_num.startswith(ctx.project_id) else alpha_num
	
	return key, key.replace(".", "").replace("_", "")


def handle_file(ctx: Context, content: TextFileBase[str] | None, file_path: str = "") -> None:
	""" Process a file to extract and replace text with lang keys.

	Args:
		ctx      (Context):      The context containing project information.
		content  (TextFileBase): The content of the file to process.
		file_path (str):         The file path for generating lang keys.

	Returns:
		None: The function modifies the content in place.
	"""
	# Read content from supported beet types
	#	Function, LootTable, ItemModifier or Advancement
	if isinstance(content, TextFileBase):
		string: str = str(content.text)
	else:
		raise ValueError(f"Unsupported content type: {type(content)}")

	# Extract all text matches
	matches: list[tuple[str, int, int, str]] = extract_texts(string)

	# Process matches in reverse to avoid position shifting
	for text, start, end, quote in reversed(matches):
		# Clean text and skip if not useful
		# Handle Unicode escape sequences (like \u94c1\u7827\u4e0b\u843d)
		if "\\u" in text:
			try:
				# Decode Unicode escape sequences
				clean_text = text.encode().decode('unicode_escape')
			except:
				clean_text = text.replace("\\n", "\n").replace("\\", "")
		else:
			clean_text = text.replace("\\n", "\n").replace("\\", "")
		
		if not any(c.isalnum() for c in clean_text):
			continue

		key_for_lang, verif = lang_format(ctx, clean_text, file_path)
		if len(verif) < 3 or "$(" in text:
			continue

		if key_for_lang not in lang:
			lang[key_for_lang] = clean_text
		elif lang[key_for_lang] != clean_text:
			continue

		# Replace whole "text": "value" with "translate": "key"
		new_fragment: str = f'{quote}translate{quote}: {quote}{key_for_lang}{quote}'
		string = string[:start] + new_fragment + string[end:]

	# Update the content
	if string != str(content.text):
		content.text = string
