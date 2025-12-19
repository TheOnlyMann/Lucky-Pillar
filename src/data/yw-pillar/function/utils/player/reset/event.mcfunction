execute if score #Game EventID matches 12 as @a run attribute @s jump_strength modifier remove yw-pillar:event.broken_leg
execute if score #Game EventID matches 13 unless score #Game RuleID matches 3 as @a run attribute @s attack_damage base reset
execute if score #Game EventID matches 15 as @a run attribute @s entity_interaction_range modifier remove yw-pillar:event.pat_pat
execute if score #Game EventID matches 21 as @a run attribute @s movement_speed modifier remove yw-pillar:event.speed