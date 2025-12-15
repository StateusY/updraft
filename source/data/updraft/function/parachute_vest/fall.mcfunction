# if unsneaked and falling, give levitation and add floating tag
execute as @s[predicate=!updraft:sneaking, tag=!up.parachute_vest_floating] run effect give @s minecraft:levitation 1 0 true 
execute as @s[predicate=!updraft:sneaking, tag=!up.parachute_vest_floating] at @s run summon item_display ~ ~2.75 ~ {Tags:["ud.parachute_visual"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"updraft:parachute"}}}
execute as @s[predicate=!updraft:sneaking, tag=!up.parachute_vest_floating] run tag @s add up.parachute_vest_floating

# basic slow falling
execute as @s[predicate=!updraft:sneaking] run effect give @s minecraft:slow_falling 1 0 true

# cut slow falling if sneaking, remove floating tag
execute as @s[predicate=updraft:sneaking] run effect clear @s minecraft:slow_falling
execute as @s[predicate=updraft:sneaking] at @s as @n[type=item_display, tag=ud.parachute_visual] run kill @s
execute as @s[predicate=updraft:sneaking, tag=up.parachute_vest_floating] run tag @s remove up.parachute_vest_floating

# parachute visual only if floating
#execute as @s[predicate=!updraft:sneaking] run execute at @a run particle minecraft:end_rod ~ ~2.5 ~ .5 0 .5 0 30 normal
execute if entity @s[tag=up.parachute_vest_floating] at @s as @n[type=item_display, tag=ud.parachute_visual] run tp @s ~ ~2.75 ~ ~ 0