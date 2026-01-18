advancement revoke @s only yw-pillar:game/item/hongbao

playsound entity.sniffer.drop_seed master @s
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6
execute store result score @s YanPai run random value 1..10

# 苹果
execute if score @s YanPai matches 1 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/apple",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 1 run give @s apple 1
# 金苹果
execute if score @s YanPai matches 2 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/golden_apple",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 2 run give @s golden_apple 1
# 附魔金
execute if score @s YanPai matches 3 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/golden_apple",atlas:"items",object:"atlas",},"x1"]
execute if score @s YanPai matches 3 run give @s enchanted_golden_apple 1
# 铁胸甲
execute if score @s YanPai matches 4 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/iron_chestplate",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 4 run give @s iron_chestplate 1
# 幸运药水
execute if score @s YanPai matches 5 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/potion",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 5 run give @s potion[potion_contents={custom_effects:[{id:"luck",duration:400},{id:"regeneration",duration:200},{id:"strength",duration:200}]}] 1
# 烟花
execute if score @s YanPai matches 6 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/firework_rocket",atlas:"items",object:"atlas"},"x2"]
execute if score @s YanPai matches 6 run give @s firework_rocket 2
# 橡木木板
execute if score @s YanPai matches 7 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"block/oak_planks",atlas:"blocks",object:"atlas"},"x10"]
execute if score @s YanPai matches 7 run give @s oak_planks 10
# 不死图腾
execute if score @s YanPai matches 8 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/totem_of_undying",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 8 run give @s totem_of_undying 1
# 末地水晶
execute if score @s YanPai matches 9 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{sprite:"item/end_crystal",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 9 run give @s end_crystal 1
# 再来一次
execute if score @s YanPai matches 10 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"开出了",color:"yellow"},{text:"再来一次",color:"green"}]
execute if score @s YanPai matches 10 run give @s stick[custom_name={text:"红包",color:"gold",bold:1b,italic:0b},lore=[{text:"新年好~",color:"red"}],consumable={animation:"none",consume_seconds:0.01,has_consume_particles:0b,sound:{sound_id:""}},item_model="yw-pillar:special/hongbao",custom_data={item:"hongbao"}]