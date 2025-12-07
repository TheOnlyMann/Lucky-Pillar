# 准备物品
execute as @a[tag=!ready] run item replace entity @s hotbar.4 with white_dye[custom_name={text:"旁观",color:"dark_gray",italic:false},item_model="yw-pillar:lobby/spectator",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.05,has_consume_particles:false,sound:"ui.button.click"}]
execute as @a[tag=ready] run item replace entity @s hotbar.4 with white_dye[custom_name={text:"已准备",color:"green",italic:false},item_model="yw-pillar:lobby/ready",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.05,has_consume_particles:false,sound:"ui.button.click"}]
execute as @a run item replace entity @s hotbar.7 with white_dye[custom_name={text:"对局记录",color:"aqua",italic:false},item_model="yw-pillar:lobby/log",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"item.book.page_turn"}]
execute as @a run item replace entity @s hotbar.8 with white_dye[custom_name={text:"查看战绩",color:"gold",italic:false},item_model="yw-pillar:lobby/statistic",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"block.enchantment_table.use"}]
# 清理
execute as @a if items entity @s player.cursor white_dye run item replace entity @s player.cursor with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"item":"hotbar_item"}}}}]


# Trigger
scoreboard players enable @a TriggerSetting.Map
scoreboard players enable @a TriggerSetting.Dialog
scoreboard players enable @a TriggerSetting.Rule
execute as @a[scores={TriggerSetting.Map=1..}] run function yw-pillar:settings/map with storage yw-pillar:settings game
execute as @a[scores={TriggerSetting.Dialog=1..}] run function yw-pillar:dialog/trigger
execute as @a[scores={TriggerSetting.Rule=1..}] run function yw-pillar:settings/rule

# buff
effect give @a saturation infinite 0 true