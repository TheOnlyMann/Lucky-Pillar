execute if score #Game GameStatus matches 0 run function yw-pillar:loop/before_game
execute if score #Game GameStatus matches 1 run function yw-pillar:loop/in_game

function yw-pillar:test/tick

# 雪球和鸡蛋
function yw-pillar:utils/game/item/projectile