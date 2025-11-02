advancement revoke @s only yw-pillar:game/item/fire_charge_use

function yw-pillar:utils/other/motion {scale:0.4}

execute anchored eyes run summon fireball ^ ^-0.1 ^0.2

execute as @e[type=fireball,distance=..2] run data modify entity @s Motion[0] set from storage yw-pillar:temp motion.x
execute as @e[type=fireball,distance=..2] run data modify entity @s Motion[1] set from storage yw-pillar:temp motion.y
execute as @e[type=fireball,distance=..2] run data modify entity @s Motion[2] set from storage yw-pillar:temp motion.z