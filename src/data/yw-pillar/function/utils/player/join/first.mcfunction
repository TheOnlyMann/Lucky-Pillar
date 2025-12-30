tp @s 100 3 100
gamemode adventure @s
team join Ready
tag @s add ready

# 未开始
execute if score #Game GameStatus matches 0 run function yw-pillar:utils/player/count
execute if score #Game GameStatus matches 0 run function yw-pillar:game/sidebar/lobby
# 已开始
execute if score #Game GameStatus matches 1 run function yw-pillar:utils/player/join/ingame

# 节日
function yw-pillar:utils/festival/all