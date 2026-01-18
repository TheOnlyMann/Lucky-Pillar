advancement revoke @s only yw-pillar:game/item/fly_boat

execute as @e[type=oak_boat,tag=fly_boat,sort= nearest,limit=1] unless score @s Item.fly_boat_duration matches -2147483648..2147483647 run scoreboard players set @s Item.fly_boat_duration 900