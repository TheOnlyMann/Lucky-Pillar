advancement revoke @s only yw-pillar:lobby/discord

playsound block.note_block.bit master @s
tellraw @s ["",{text:"<fishing886_> ",color:"dark_purple"},{color:"gold",text:"点击加入Discord "},{color:"aqua",bold:true,underlined:true,text:"YuWan",click_event:{action:"open_url",url:"https://discord.gg/tJT3a95Y8y"}}]