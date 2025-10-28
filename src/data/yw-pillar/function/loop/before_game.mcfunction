execute as @a[tag=] run tp 100 3 100
execute as @a[tag=] run gamemode adventure @s
execute as @a[tag=] run tag @s add ready
# 准备物品
execute as @a[tag=!ready] run item replace entity @s hotbar.4 with red_dye[custom_name={text:"旁观",color:"dark_gray",italic:false},custom_model_data={strings:["spectator"]},consumable={animation:"none",consume_seconds:114514,has_consume_particles:false,sound:"ui.button.click"}]
execute as @a[tag=ready] run item replace entity @s hotbar.4 with green_dye[custom_name={text:"已准备",color:"green",italic:false},custom_model_data={strings:["ready"]},consumable={animation:"none",consume_seconds:114514,has_consume_particles:false,sound:"ui.button.click"}]
execute as @a run item replace entity @s hotbar.8 with white_dye[custom_name={text:"查看战绩",color:"gold",italic:false},custom_model_data={strings:["statistic"]},consumable={animation:"none",consume_seconds:0.01,has_consume_particles:false,sound:"ui.button.click"}]
# 清理
execute as @a if items entity @s player.cursor #yw-pillar:lobby run item replace entity @s player.cursor with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_model_data":{strings:["spectator"]}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_model_data":{strings:["ready"]}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_model_data":{strings:["statistic"]}}}}]


# Trigger
scoreboard players enable @a TriggerSetting.Map
execute as @a[scores={TriggerSetting.Map=1..}] run function yw-pillar:settings/map
scoreboard players enable @a TriggerSetting.Dialog
execute as @a[scores={TriggerSetting.Dialog=1..}] run function yw-pillar:dialog/trigger

# 设置
scoreboard players remove @a[scores={Delay.Settings=1..}] Delay.Settings 1
execute as @a[scores={Delay.Settings=1}] run function yw-pillar:dialog/settings/menu with storage yw-pillar:settings game

# buff
effect give @a saturation infinite 0 true

# 上一把中途退出
function yw-pillar:utils/player/leave_halfway