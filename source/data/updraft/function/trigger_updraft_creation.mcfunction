advancement revoke @s only updraft:detect_gust_core_use
execute at @s as @e[type=end_crystal,distance=..20] run tag @s add updraft_fan
execute at @s as @e[type=end_crystal,distance=..20] run data modify entity @s Invulnerable set value 1b
execute at @e[type=end_crystal,distance=..20] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 1 10 normal
execute at @e[type=end_crystal,distance=..20] run playsound minecraft:entity.breeze.inhale