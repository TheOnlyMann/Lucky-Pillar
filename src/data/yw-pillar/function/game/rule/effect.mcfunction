## 调用 function yw-pillar:loop/in_game
execute if score #Game RuleID matches 3 as @a[tag=ingame,tag=!out] run function yw-pillar:game/rule/3_my_partner/run with entity @s
execute if score #Game RuleID matches 6 run effect give @a[tag=ingame,tag=!out] invisibility infinite 0 true