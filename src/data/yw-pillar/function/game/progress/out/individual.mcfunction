scoreboard players set @s DeathCheck 0
scoreboard players add @s DeathCount 1

scoreboard players remove #Game PlayerCount.Alive 1
scoreboard players add #Game PlayerCount.Out 1

gamemode spectator @s
tag @s add out
team join Out

execute if score #Game PlayerCount.Alive matches 1 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/individual