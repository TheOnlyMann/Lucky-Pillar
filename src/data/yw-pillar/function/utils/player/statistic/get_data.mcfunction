$data modify storage yw-pillar:statistics temp set value {"$(UUID)":{}}

$data modify storage yw-pillar:statistics temp."$(UUID)".UUID set value $(UUID)
$execute store result storage yw-pillar:statistics temp."$(UUID)".playtime_min int 1 run scoreboard players get @s PlayTime.Min
$execute store result storage yw-pillar:statistics temp."$(UUID)".playtime_sec int 1 run scoreboard players get @s PlayTime.Sec
$execute store result storage yw-pillar:statistics temp."$(UUID)".completedcount int 1 run scoreboard players get @s CompletedCount
$execute store result storage yw-pillar:statistics temp."$(UUID)".wincount int 1 run scoreboard players get @s WinCount
$execute store result storage yw-pillar:statistics temp."$(UUID)".killedcount int 1 run scoreboard players get @s KilledCount
$execute store result storage yw-pillar:statistics temp."$(UUID)".deathcount int 1 run scoreboard players get @s DeathCount

function yw-pillar:utils/player/statistic/get_name with entity @s