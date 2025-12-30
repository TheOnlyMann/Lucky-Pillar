execute as @e[type=slime,tag=event.26_greedy_slime] at @s run kill @e[type=item,sort=nearest,limit=1]

scoreboard players add $SlimeSize math 1
execute if score $SlimeSize math matches 5.. as @e[type=slime,tag=event.26_greedy_slime] store result entity @s Size int 0.2 run scoreboard players get $SlimeSize math
execute if score $SlimeSize math matches 5.. run scoreboard players set $SlimeSize math 0