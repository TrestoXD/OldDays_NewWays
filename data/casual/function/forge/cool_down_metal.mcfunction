# 1. Comprobar que el bloque donde cayó el ítem sea un caldero con agua. Si está vacío, frena.
execute unless block ~ ~ ~ minecraft:water_cauldron run return 0

# 2. SISTEMA DE AGUA SEGURO: Llama a la función de reducción lineal
function casual:forge/reduce_water

# 3. Atmósfera Vanilla: Siseo y vapor de agua
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1.0 1.2
particle minecraft:cloud ~ ~0.2 ~ 0.2 0.1 0.2 0.01 15

# 4. RECOMPENSAS SEGÚN CALIDAD (Sintaxis nativa de componentes escapados para /summon en la 1.21)
# Calidad baja (0 o 1) -> Lingote Común
execute as @p[distance=..6] if score @s forge_quality matches ..1 run summon minecraft:item ~ ~0.4 ~ {Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_name":'Temped Iron Ingot'}}}

# Calidad media (2) -> Lingote Épico
execute as @p[distance=..6] if score @s forge_quality matches 2 run summon minecraft:item ~ ~0.4 ~ {Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_data":{forge_tier:"epic"},"minecraft:item_name":'Epic Temped Iron Ingot'}}}
execute as @p[distance=..6] if score @s forge_quality matches 2 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1.2

# Calidad alta (3 o más) -> Lingote Legendario 
execute as @p[distance=..6] if score @s forge_quality matches 3.. run summon minecraft:item ~ ~0.4 ~ {Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_data":{forge_tier:"legendary"},"minecraft:item_name":'Legendary Temped Iron Ingot'}}}
execute as @p[distance=..6] if score @s forge_quality matches 3.. run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1.0 1.0

# 5. Resetear el marcador del creador y destruir la pepita caliente del suelo para evitar duplicaciones
scoreboard players set @p[distance=..6] forge_quality 0
kill @s
