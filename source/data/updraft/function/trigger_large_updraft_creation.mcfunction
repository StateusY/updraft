execute at @s as @e[type=end_crystal,distance=..20] run tag @s add large_updraft_fan
execute at @s as @e[type=end_crystal,distance=..20] run data modify entity @s Invulnerable set value 1b
execute at @e[type=end_crystal,distance=..20] run particle minecraft:flash ~ ~ ~ 0 0 0 1 10 normal
execute at @e[type=end_crystal,distance=..20] run playsound minecraft:entity.breeze.inhale
execute at @e[type=end_crystal,distance=..20] run playsound minecraft:entity.generic.explode ambient @a[distance=..100] ~ ~ ~ 300 0.1

