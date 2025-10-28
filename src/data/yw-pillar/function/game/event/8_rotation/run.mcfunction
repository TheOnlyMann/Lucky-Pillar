scoreboard players add $Temp var 1
execute store result storage yw-pillar:temp rotation.x float 1 run scoreboard players get $Temp var
function yw-pillar:game/event/8_rotation/run_2 with storage yw-pillar:temp rotation