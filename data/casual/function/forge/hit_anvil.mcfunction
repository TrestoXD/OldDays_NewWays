# 1. INCREMENTAR PROGRESO
scoreboard players add @s forge_progress 1

# 2. CALCULAR TONO (PITCH) SEGURO (Tu sistema de sonido perfecto que va de lujo)
execute store result score #temp casual_const run scoreboard players get @s forge_progress
scoreboard players operation #temp casual_const += #base casual_const
execute store result storage casual:forge pitch float 0.1 run scoreboard players get #temp casual_const
function casual:forge/play_anvil_sound with storage casual:forge

# 3. Partículas y Calidad Overgeared
particle minecraft:crit ~ ~1.2 ~ 0.2 0.1 0.2 0.1 15
execute if score @s forge_progress matches 5.. run scoreboard players add @s forge_quality 1

# 4. Comprobación de Éxito
execute if score @s forge_progress matches 10.. run function casual:forge/success_forge
