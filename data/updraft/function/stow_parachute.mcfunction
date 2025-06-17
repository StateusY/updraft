advancement revoke @s only updraft:stow_parachute

execute if items entity @s weapon.mainhand * run tellraw @s {"hover_event":{"action":"show_text","value":[{"text":"","italic":true}]},"text":"Remove Mainhand Item"}
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:phantom_membrane[item_name="Parachute",custom_data={"custom_id": "undeployed_parachute"},consumable={consume_seconds:0,animation:"none",sound:"item.armor.equip_elytra",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"item.armor.equip_leather"}]},food={nutrition:0,saturation:0,can_always_eat:true}] 1

tag @s remove parachute_open
tag @s add parachute_close


#execute at @s as @e[distance=..10,tag=parachute,sort=nearest,limit=1] run kill

