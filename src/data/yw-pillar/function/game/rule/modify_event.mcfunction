## 调用 yw-pillar:game/event/main
execute if score #Game RuleID matches 5 run scoreboard players set #Game EventID 16
execute if score #Game RuleID matches 6 run effect give @a[tag=ingame,tag=!out] glowing 5