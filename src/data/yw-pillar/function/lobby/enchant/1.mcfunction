advancement revoke @s only yw-pillar:lobby/enchant

playsound block.enchantment_table.use master @s
loot give @s loot {pools:[{rolls:3,entries:[{type:"loot_table",value:"yw-pillar:enchanted_book"}]}]}

execute as @e[type=item_display,distance=..5,sort= nearest,tag=lobby.enchant,limit=1] run data modify entity @s interpolation_duration set value 5
execute as @e[type=item_display,distance=..5,sort= nearest,tag=lobby.enchant,limit=1] run data modify entity @s transformation set value {translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.8,0.8,0.8],right_rotation:[0f,0f,0f,1f]}

schedule function yw-pillar:lobby/enchant/2 5