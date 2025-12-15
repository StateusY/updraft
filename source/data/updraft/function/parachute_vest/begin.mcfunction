# levitaion
effect give @s minecraft:levitation 1 0 true
# SFX
playsound minecraft:item.armor.equip_generic
# tagged
tag @s add ud.parachute_falling
# summon parachute
summon item_display ~ ~2.75 ~ {Tags:["ud.parachute_visual"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"updraft:parachute"}}}