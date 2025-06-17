#fans
execute at @e[type=end_crystal,tag=updraft_fan] positioned ~-1 ~ ~-1 as @e[dx=2,dy=25,dz=2] run effect give @s minecraft:levitation 1 20 true
execute at @e[type=end_crystal,tag=updraft_fan] run particle minecraft:gust ~ ~6 ~ .15 8.5 .15 0 4 force
execute at @e[type=end_crystal,tag=updraft_fan] run particle minecraft:end_rod ~ ~6 ~ 0.75 7 0.75 0 10 force
execute at @e[type=minecraft:end_crystal,tag=updraft_fan] as @e[type=minecraft:wind_charge,distance=..2] run tag @s add kill_wind_charge_on_updraft_impact
execute at @e[type=minecraft:wind_charge] as @e[type=minecraft:end_crystal,tag=updraft_fan,distance=..2] run kill
execute at @e[type=minecraft:wind_charge, tag=kill_wind_charge_on_updraft_impact] run playsound minecraft:entity.breeze.death ambient @a ~ ~ ~
execute as @e[type=minecraft:wind_charge, tag=kill_wind_charge_on_updraft_impact] run kill

#parachutes
execute as @a[tag=parachute_open] run effect give @s minecraft:slow_falling 1 1 true
execute as @a[tag=parachute_close] run effect clear @s minecraft:slow_falling
execute as @a[tag=parachute_close] run tag @s remove parachute_close

#execute at @p as @e[distance=..10,tag=parachute,sort=nearest,limit=1] run tp @s ~ ~ ~ ~90 0
