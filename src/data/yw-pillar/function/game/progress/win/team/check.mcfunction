execute as @a[tag=ingame,tag=!out] as @s run function yw-pillar:utils/player/number/double/team_number

execute as @r[tag=ingame,tag=!out] at @s if score @s TeamNumber = @a[tag=ingame,tag=!out,distance=0.01..,limit=1] TeamNumber run function yw-pillar:game/progress/win/team/run