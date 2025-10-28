scoreboard players add @s WinCount 1

title @a title ["",{text:"游戏结束！",color:"gold"}]
title @a subtitle ["",{text:"MVP ",color:"gold",bold:true},{selector:"@s",color:"green"}]
playsound minecraft:entity.ender_dragon.ambient master @s

schedule function yw-pillar:game/end 3s