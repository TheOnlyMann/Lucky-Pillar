scoreboard players add #Timer GameTime.Sec 1
execute if score #Timer GameTime.Sec matches 60.. run scoreboard players add #Timer GameTime.Min 1
execute if score #Timer GameTime.Sec matches 60.. run scoreboard players set #Timer GameTime.Sec 0