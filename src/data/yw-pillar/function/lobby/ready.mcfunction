advancement revoke @s only yw-pillar:lobby/ready

tag @s add ready
tag @s remove spectator

team join Ready

function yw-pillar:utils/player/count
function yw-pillar:game/sidebar/lobby

tellraw @s ["",{text:"[Tips]",color:"gold",bold:true},{text:"你将参加游戏！",color:"green"}]