kill @e[tag=event.6_rain] 

execute as @a[tag=ingame,tag=!out] at @s run summon arrow ~ ~6 ~ {Tags:["event.6_rain"],Motion:[0,-0.3,0],crit:true,life:600,Passengers:[{id:"item_display",item:{id:"stone_sword"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,2.5f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["event.6_rain"]}]}
execute as @a[tag=ingame,tag=!out] at @s run summon arrow ~ ~6 ~ {Tags:["event.6_rain"],Motion:[0,-0.3,0],crit:true,life:600,Passengers:[{id:"item_display",item:{id:"trident"},transformation:{translation:[0.4f,-1f,-0.5f],left_rotation:[0f,0f,1.5f,0.1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["event.6_rain"]}]}
execute as @a[tag=ingame,tag=!out] at @s run summon arrow ~ ~6 ~ {Tags:["event.6_rain"],Motion:[0,-0.3,0],crit:true,life:600,Passengers:[{id:"item_display",item:{id:"anvil"},Tags:["event.6_rain"]}]}
execute as @a[tag=ingame,tag=!out] at @s run summon arrow ~ ~6 ~ {Tags:["event.6_rain"],Motion:[0,-0.3,0],crit:true,life:600,Passengers:[{id:"item_display",item:{id:"iron_spear"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,-2f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["event.6_rain"]}]}
execute as @a[tag=ingame,tag=!out] at @s run summon arrow ~ ~6 ~ {Tags:["event.6_rain"],Motion:[0,-0.3,0],crit:true,life:600,Passengers:[{id:"item_display",item:{id:"tnt"},Tags:["event.6_rain"]}]}

execute as @e[type=arrow,tag=event.6_rain] run function yw-pillar:game/event/6_rain/run_2 with entity @s