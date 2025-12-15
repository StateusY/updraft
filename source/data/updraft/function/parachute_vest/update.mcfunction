# chack if player equips vest
execute as @a[tag=!ud.parachute_vest_on] if predicate updraft:is_parachute_vest_on run tag @s add ud.parachute_vest_on

# check if player removes vest
execute as @a[tag=ud.parachute_vest_on] unless predicate updraft:is_parachute_vest_on run function updraft:parachute_vest/clear_tags

# apply pvest beginning effect
execute as @a[tag=ud.parachute_vest_on,tag=!ud.parachute_landed,tag=!ud.parachute_falling,predicate=!updraft:is_acending,gamemode=survival] at @s if block ~ ~-7 ~ air if block ~ ~-6 ~ air if block ~ ~-5 ~ air if block ~ ~-4 ~ air if block ~ ~-3 ~ air if block ~ ~-2 ~ air if block ~ ~-1 ~ air run function updraft:parachute_vest/begin
execute as @a[tag=ud.parachute_vest_on,tag=!ud.parachute_landed,tag=!ud.parachute_falling,predicate=!updraft:is_acending,gamemode=adventure] at @s if block ~ ~-7 ~ air if block ~ ~-6 ~ air if block ~ ~-5 ~ air if block ~ ~-4 ~ air if block ~ ~-3 ~ air if block ~ ~-2 ~ air if block ~ ~-1 ~ air run function updraft:parachute_vest/begin

# run when falling
execute as @a[tag=ud.parachute_vest_on,tag=!ud.parachute_landed,tag=ud.parachute_falling,gamemode=survival,predicate=!updraft:is_acending] run function updraft:parachute_vest/fall
execute as @a[tag=ud.parachute_vest_on,tag=!ud.parachute_landed,tag=ud.parachute_falling,gamemode=adventure,predicate=!updraft:is_acending] run function updraft:parachute_vest/fall

# run on landing
execute as @a[tag=ud.parachute_vest_on,tag=ud.parachute_falling] at @s unless block ~ ~-1 ~ air run function updraft:parachute_vest/land