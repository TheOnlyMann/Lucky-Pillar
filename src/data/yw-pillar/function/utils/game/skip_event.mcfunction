execute unless score #Game GameStatus matches 1 run return fail

scoreboard players set #Timer EventTimer 1
tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{text:"事件已跳过！",color:"green"}]