# 雪球和鸡蛋
execute as @e[type=#yw-pillar:special_projectile] run function yw-pillar:utils/game/item/special_projectile with entity @s
# 回响碎片
execute as @e[type=fireball,tag=sonic_boom] as @s at @s run function yw-pillar:utils/game/item/echo_shard/particle