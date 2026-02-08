import json
import os

# 读取源语言文件（zh_cn.json）和目标语言文件（en_us.json）
zh_cn_path = "src/assets/yw-pillar/lang/zh_cn.json"
en_us_path = "src/assets/yw-pillar/lang/en_us.json"

# 检查文件是否存在
if not os.path.exists(zh_cn_path):
    print(f"文件 {zh_cn_path} 不存在")
    exit()

if not os.path.exists(en_us_path):
    print(f"文件 {en_us_path} 不存在")
    exit()

# 读取 JSON 内容
with open(zh_cn_path, "r", encoding="utf-8") as f:
    zh_cn_data = json.load(f)

with open(en_us_path, "r", encoding="utf-8") as f:
    en_us_data = json.load(f)

# 找出 zh_cn 中存在但 en_us 中不存在的键
missing_keys = [key for key in zh_cn_data if key not in en_us_data]

# 将缺失的键添加到 en_us 中
for key in missing_keys:
    en_us_data[key] = zh_cn_data[key]

# 按字母顺序排序键
sorted_en_us_data = dict(sorted(en_us_data.items()))

# 写入更新后的 en_us.json 文件
with open(en_us_path, "w", encoding="utf-8") as f:
    json.dump(sorted_en_us_data, f, ensure_ascii=False, indent=2)

print(f"已更新 {en_us_path}，添加了 {len(missing_keys)} 个新键")
