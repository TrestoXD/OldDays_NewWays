# ... (Tus partículas de la fogata se quedan igual) ...

# Cuando el marcador llega a 100, invocamos el ítem agregando el Tag de rendimiento 'casual_hot_metal'
execute if score @s casual_heat matches 100.. run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.8 1.5
execute if score @s casual_heat matches 100.. run summon minecraft:item ~ ~0.5 ~ {Tags:["casual_hot_metal"],Item:{id:"minecraft:iron_nugget",count:1,components:{"custom_data":{hot_metal:1b},"item_name":'Metal Al Rojo Vivo'}}}
execute if score @s casual_heat matches 100.. run kill @s
