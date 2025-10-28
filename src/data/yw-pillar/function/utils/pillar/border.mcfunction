execute store result score #Game BorderWidth run worldborder get

# 收缩
execute if score #Game BorderWidth matches 3.. run worldborder add -5 60
execute if score #Game BorderWidth matches 3.. run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{text:"边界开始收缩！",color:"red"}]
# 崩溃
execute if score #Game BorderWidth matches ..5 run function yw-pillar:utils/pillar/collapse
execute if score #Game BorderWidth matches ..5 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{text:"平台开始崩溃！",color:"red"}]

execute store result score #Timer BorderTimer run data get storage yw-pillar:settings time.border_time

