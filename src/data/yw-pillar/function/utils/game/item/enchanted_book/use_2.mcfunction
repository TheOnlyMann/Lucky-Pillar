$data modify storage yw-pillar:temp enchant."$(UUID)".UUID set from entity @s UUID
$data modify storage yw-pillar:temp enchant."$(UUID)".enchantment set from entity @s SelectedItem.components."minecraft:stored_enchantments"

$function yw-pillar:utils/game/item/enchanted_book/use_3 with storage yw-pillar:temp enchant."$(UUID)"