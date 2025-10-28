execute as @e[tag=aj.pillar_wool.root] run function animated_java:pillar_wool/remove/this
execute positioned 98 2 100 rotated 0 0 run function animated_java:pillar_wool/summon {args:{}}
execute as @e[tag=aj.pillar_wool.root] run function animated_java:pillar_wool/animations/animation_model_pillar_wool_1/play

tellraw @a {text:"旋转"}
tellraw @a {text:"旋转1"}
