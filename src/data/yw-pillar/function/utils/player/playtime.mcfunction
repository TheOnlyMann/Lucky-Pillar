scoreboard players add @s PlayTime.Sec 1
execute if score @s PlayTime.Sec matches 60 run scoreboard players add @s PlayTime.Min 1
execute if score @s PlayTime.Sec matches 60 run scoreboard players set @s PlayTime.Sec 0
execute if score @s PlayTime.Min matches 60 run scoreboard players add @s PlayTime.Hour 1
execute if score @s PlayTime.Min matches 60 run scoreboard players set @s PlayTime.Min 0