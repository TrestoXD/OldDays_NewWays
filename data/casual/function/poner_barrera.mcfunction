# Invocar la barrera invisible exactamente en los pies del aldeano
execute at @s unless entity @e[type=minecraft:interaction,tag=bloqueo_aldeano,distance=..1] run summon minecraft:interaction ~ ~ ~ {width:0.8f,height:2.0f,Tags:["bloqueo_aldeano"]}

# Iniciar el seguimiento (Smart Schedule)
execute at @s run function casual:actualizar_barrera