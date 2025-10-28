# 水是有剧毒的
execute as @a[tag=ingame,tag=!out] at @s if predicate yw-pillar:player/in_water run effect give @s poison 5 0 false
# 事件
execute if score #Timer EventTimer matches 1.. run scoreboard players remove #Timer EventTimer 1
execute if score #Timer EventTimer matches 0 run function yw-pillar:game/event/main
# 边界
execute if score #Timer BorderTimer matches 1.. run scoreboard players remove #Timer BorderTimer 1
execute if score #Timer BorderTimer matches 0 run function yw-pillar:utils/pillar/border