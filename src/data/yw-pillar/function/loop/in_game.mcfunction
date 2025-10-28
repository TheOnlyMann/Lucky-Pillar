execute as @a[scores={DeathCheck=1..}] if score #Game GameMode matches 0 run function yw-pillar:game/progress/out/individual

execute as @a[scores={KilledCheck=1..}] run function yw-pillar:utils/player/killed

# 掉落虚空
execute as @a[tag=ingame,tag=!out] at @s if predicate {condition:"location_check",predicate:{position:{y:{max:-10}}}} run kill @s
execute as @a[tag=ingame,tag=!out] at @s if predicate {condition:"location_check",predicate:{position:{y:{min:120}}}} run tp @s ~ 110 ~
# 中途加入
execute as @a[tag=!ingame,tag=!spectator,tag=!ready] run function yw-pillar:utils/player/join_halfway
# 随机事件
function yw-pillar:game/event/duration_tick