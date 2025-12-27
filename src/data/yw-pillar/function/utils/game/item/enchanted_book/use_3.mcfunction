$item modify entity @s weapon.offhand {function:"set_enchantments",enchantments:$(enchantment),add:true}
item replace entity @s weapon.mainhand with air
# $data remove storage yw-pillar:temp enchant."$(UUID)"