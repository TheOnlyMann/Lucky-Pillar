scoreboard players remove @s Enchant.double_jump 1

execute as @s[scores={Enchant.double_jump=1}] run playsound entity.wind_charge.wind_burst master
execute anchored feet run particle gust_emitter_small