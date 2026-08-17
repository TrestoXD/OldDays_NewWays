# Reproducir el sonido de bola de fuego del Blaze exacto
playsound minecraft:entity.blaze.shoot block @a ~ ~ ~ 0.7 1.2

# Generar partículas de fuego y humo alrededor del mineral
particle minecraft:flame ~ ~0.1 ~ 0.1 0.2 0.1 0.02 8
particle minecraft:smoke ~ ~0.2 ~ 0.1 0.1 0.1 0.01 5

# Opcional: Reemplazar el ítem frío por el ítem caliente (cambiando su componente de nombre/custom_data o ID)
# Ejemplo transformando la entidad de ítem:
data modify entity @s Item.id set value "minecraft:raw_iron"
data modify entity @s Item.components."minecraft:item_name" set value '{"text":"Hierro al Rojo Vivo","color":"red","bold":true}'
tag @s remove mineral_frio
tag @s add mineral_caliente