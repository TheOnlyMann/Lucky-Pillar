scoreboard players set #Game PlayerCount.Ready 0
execute as @a[tag=ready] run scoreboard players add #Game PlayerCount.Ready 1
execute store result storage yw-pillar:settings game.player_count int 1 run scoreboard players get #Game PlayerCount.Ready