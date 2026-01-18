execute as @a if items entity @s weapon.mainhand feather[custom_data={"item":"feather"}] run effect give @s slow_falling 5
execute as @a[scores={Enchant.wind_brust_plus_cooldown=1..}] run function yw-pillar:utils/game/item/fly_mace/cooldown
execute as @e[type=oak_boat,scores={Item.fly_boat_duration=1..}] at @s run function yw-pillar:utils/game/item/fly_boat/use_2