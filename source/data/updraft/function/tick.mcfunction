#FANS
execute at @e[type=end_crystal,tag=updraft_fan] positioned ~-1 ~ ~-1 as @e[dx=2,dy=25,dz=2] run effect give @s minecraft:levitation 1 20 true

#execute at @e[type=end_crystal,tag=updraft_fan] run particle dust_pillar{block_state:"minecraft:nether_portal"} ~ ~ ~ 0 1.2 0 0.1 100 normal
execute at @e[type=end_crystal,tag=updraft_fan] run particle minecraft:gust ~ ~6 ~ .15 8.5 .15 0 4 force
execute at @e[type=end_crystal,tag=updraft_fan] run particle minecraft:end_rod ~ ~6 ~ 0.75 7 0.75 0 10 force


#DESTROY FAN
execute at @e[type=minecraft:end_crystal,tag=updraft_fan] as @e[type=minecraft:wind_charge,distance=..2] run tag @s add kill_wind_charge_on_updraft_impact
execute at @e[type=minecraft:wind_charge] as @e[type=minecraft:end_crystal,tag=updraft_fan,distance=..2] run kill
execute at @e[type=minecraft:wind_charge, tag=kill_wind_charge_on_updraft_impact] run playsound minecraft:entity.breeze.death ambient @a ~ ~ ~
execute at @e[type=minecraft:wind_charge, tag=kill_wind_charge_on_updraft_impact] run summon item ~ ~ ~ {Glowing:1b,Item:{id:"minecraft:end_crystal",count:1}}
execute at @e[type=minecraft:wind_charge, tag=kill_wind_charge_on_updraft_impact] run summon item ~ ~ ~ {Item:{id:"minecraft:wind_charge",count:1}}
execute as @e[type=minecraft:wind_charge, tag=kill_wind_charge_on_updraft_impact] run kill


#BIG FANS
execute at @e[type=end_crystal,tag=large_updraft_fan] positioned ~-5 ~ ~-5 as @e[dx=10,dy=150,dz=10] run effect give @s minecraft:levitation 1 100 true
execute at @e[type=end_crystal,tag=large_updraft_fan] positioned ~-5 ~ ~-5 as @e[dx=10,dy=150,dz=10] run effect give @s minecraft:slow_falling 60 1 true
execute at @e[type=end_crystal,tag=large_updraft_fan] positioned ~ ~55 ~ run particle minecraft:gust_emitter_large ~ ~6 ~ .35 25.5 .35 0 8 force
execute at @e[type=end_crystal,tag=large_updraft_fan] positioned ~ ~55 ~ run particle minecraft:end_rod ~ ~6 ~ 1 21 1 0.1 25 force


#PARACHUTE VEST
function updraft:parachute_vest/update