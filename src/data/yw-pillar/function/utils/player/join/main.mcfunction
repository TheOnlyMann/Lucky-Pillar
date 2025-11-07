scoreboard players set @s LeaveGame 0

execute if score #Game GameStatus matches 0 as @s[tag=ingame] run function yw-pillar:utils/player/join/before_game
execute if score #Game GameStatus matches 1 run function yw-pillar:utils/player/join/ingame