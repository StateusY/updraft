# remove tag
tag @s remove ud.parachute_falling
# remove effects
effect clear @s minecraft:slow_falling
effect clear @s minecraft:levitation
# SFX
execute as @a[tag=ud.parachute_vest_on] run playsound minecraft:entity.player.small_fall
# remove parachute visual
execute at @s as @n[type=item_display, tag=ud.parachute_visual] run kill @s