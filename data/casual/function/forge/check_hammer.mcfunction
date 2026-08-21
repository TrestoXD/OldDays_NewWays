# 1. Revocar el avance inmediatamente para permitir el próximo martillazo
advancement revoke @s only casual:forge/hit_anvil

# 2. Filtro anti doble clic rápido (1..2 ticks)
execute if score @s forge_cooldown matches 1..2 run return 0

# 3. Penalización por spamear golpes (3..10 ticks)
execute if score @s forge_cooldown matches 3..10 run function casual:forge/hit_fast_penalty
execute if score @s forge_cooldown matches 3..10 run return 0

# 4. Establecer temporizador para el siguiente golpe
scoreboard players set @s forge_cooldown 20

# 5. VALIDACIÓN MEDIANTE PREDICADOS RECTIFICADOS
execute unless predicate casual:forge/has_hammer run return 0
execute unless predicate casual:forge/has_hot_metal run return 0

# 6. Validación de Martillo de Piedra (Basic Hammer)
execute if items entity @s weapon.mainhand minecraft:stone_axe[minecraft:custom_data={hammer_type:"stone"}] run function casual:forge/denied_hammer
execute if items entity @s weapon.mainhand minecraft:stone_axe[minecraft:custom_data={hammer_type:"stone"}] run return 0

# 7. Golpe perfecto
function casual:forge/hit_anvil
