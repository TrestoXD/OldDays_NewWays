tellraw @s ["",{"text":"[DEBUG] ","color":"gold","bold":true},{"text":"Iniciando análisis del sistema de herrería...","color":"gray"}]

# 1. Marcadores
tellraw @s ["",{"text":" Verificando Marcadores... ","color":"yellow"}]
execute if score @s forge_cooldown matches ..99999 run tellraw @s {"text":"     -> forge_cooldown: OK","color":"green"}
execute unless score @s forge_cooldown matches ..99999 run tellraw @s {"text":"     ❌ ERROR: forge_cooldown NO inicializado.","color":"red"}

# 2. Comprobación de Manos mediante Predicados Nativos 1.21
tellraw @s ["",{"text":" Verificando Equipamiento actual... ","color":"yellow"}]
execute if predicate casual:forge/has_hammer run tellraw @s {"text":"     -> Mano Principal (Martillo): OK","color":"green"}
execute unless predicate casual:forge/has_hammer run tellraw @s {"text":"     ❌ ERROR: No tienes un Martillo válido en la mano principal ({hammer:1})","color":"red"}

execute if predicate casual:forge/has_hot_metal run tellraw @s {"text":"     -> Mano Secundaria (Metal Caliente): OK","color":"green"}
execute unless predicate casual:forge/has_hot_metal run tellraw @s {"text":"     ❌ ERROR: No tienes el Metal Al Rojo Vivo en la mano secundaria ({hot_metal:1})","color":"red"}

# 3. Comprobación del Bloque por Rango Realista
tellraw @s ["",{"text":" Verificando Bloque objetivo... ","color":"yellow"}]
execute at @s if block ~ ~ ~ #minecraft:anvil run tellraw @s {"text":"     -> Bloque en tus pies: Es un Yunque (OK)","color":"green"}
execute at @s if block ~ ~-1 ~ #minecraft:anvil run tellraw @s {"text":"     -> Bloque debajo de ti: Es un Yunque (OK)","color":"green"}
execute at @s if block ~1 ~ ~ #minecraft:anvil run tellraw @s {"text":"     -> Bloque al lado: Es un Yunque (OK)","color":"green"}
execute at @s if block ~-1 ~ ~ #minecraft:anvil run tellraw @s {"text":"     -> Bloque al lado: Es un Yunque (OK)","color":"green"}
execute at @s if block ~ ~ ~1 #minecraft:anvil run tellraw @s {"text":"     -> Bloque al lado: Es un Yunque (OK)","color":"green"}
execute at @s if block ~ ~ ~-1 #minecraft:anvil run tellraw @s {"text":"     -> Bloque al lado: Es un Yunque (OK)","color":"green"}

# 4. Lanzar ejecución forzada
tellraw @s ["",{"text":" Lanzando ejecución forzada de prueba de check_hammer...","color":"yellow"}]
function casual:forge/check_hammer
