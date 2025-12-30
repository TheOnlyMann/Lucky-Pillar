$data modify storage yw-pillar:temp arrow."$(UUID)" set value {}

# 分布
$execute store result storage yw-pillar:temp arrow."$(UUID)".modify_x double 1 run random value -200..200
$execute store result storage yw-pillar:temp arrow."$(UUID)".modify_z double 1 run random value -200..200
execute store result score @s Pos.X run data get entity @s Pos[0] 100
execute store result score @s Pos.Z run data get entity @s Pos[2] 100

$execute store result score @s math run data get storage yw-pillar:temp arrow."$(UUID)".modify_x
scoreboard players operation @s Pos.X += @s math
$execute store result score @s math run data get storage yw-pillar:temp arrow."$(UUID)".modify_z
scoreboard players operation @s Pos.Z += @s math

execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s Pos.X
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s Pos.Z

$data remove storage yw-pillar:temp arrow."$(UUID)"