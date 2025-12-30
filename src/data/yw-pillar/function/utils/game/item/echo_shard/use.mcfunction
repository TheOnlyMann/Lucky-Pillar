advancement revoke @s only yw-pillar:game/item/echo_shard/use

function yw-pillar:utils/other/motion/input_echo_shard with entity @s

execute anchored eyes run summon fireball ^ ^-0.2 ^0.2 {Tags:["sonic_boom"],ExplosionPower:2,Item:{id:"echo_shard"}}

function yw-pillar:utils/game/item/echo_shard/use_2 with entity @s