advancement revoke @s only yw-pillar:lobby/spectator

tag @s add spectator
tag @s remove ready

team join Spectator

function yw-pillar:utils/player/count
function yw-pillar:game/sidebar/lobby

tellraw @s ["",{text:"[Tips]",color:"gold",bold:true},{text:"你将旁观游戏！",color:"gray"}]