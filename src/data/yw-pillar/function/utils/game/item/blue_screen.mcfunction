advancement revoke @s only yw-pillar:game/item/blue_screen

execute as @r[tag=ingame,tag=!out,distance=0.01..] run tag @s add blue_screen

item replace entity @a[tag=blue_screen] armor.head with carved_pumpkin[custom_name={text:"你蓝屏了",color:"blue",bold:true,italic:false},equippable={slot:head,camera_overlay:"yw-pillar:item/special/blue_screen"},enchantments={binding_curse:1}]
execute as @a[tag=blue_screen] at @s run playsound yw-pillar:fail_start master @s
tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"把",color:"blue"},{selector:"@a[tag=blue_screen]",bold:true},{text:"变成蓝屏了！",color:"blue"}]

tag @a[tag=blue_screen] remove blue_screen
