# 羽毛
execute as @a if items entity @s weapon.mainhand feather[custom_data={"item":"feather"}] run effect give @s slow_falling 5
# 飞起来
execute as @a[scores={Enchant.wind_brust_plus_cooldown=1..}] run function yw-pillar:utils/game/item/fly_mace/cooldown
# 小飞船
execute as @e[type=oak_boat,scores={Item.fly_boat_duration=1..}] at @s run function yw-pillar:utils/game/item/fly_boat/use_2
# 隐身围巾
execute as @a if items entity @s hotbar.* stick[custom_data={item:"invisible_scarf"}] run effect give @s invisibility 5