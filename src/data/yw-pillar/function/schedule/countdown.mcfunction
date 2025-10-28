# 倒计时
execute if score #Timer BeginTimer matches 0.. run function yw-pillar:utils/pillar/cage with storage yw-pillar:settings game

execute if score #Timer BeginTimer matches 0.. run schedule function yw-pillar:schedule/countdown 1s