# =========================================================================
# PROGRAMACIÓN: Vuelve a llamarse a sí mismo en 1 segundo (Bucle sin tick.json)
# =========================================================================
schedule function casual:loop_mobs 1s

# =========================================================================
# 1. ZOMBIES (Rápidos, con rango y rompen puertas)
# =========================================================================
execute as @e[type=zombie,tag=!modified_zombie] run attribute @s minecraft:movement_speed base set 0.3
execute as @e[type=zombie,tag=!modified_zombie] run attribute @s minecraft:follow_range base set 40.0
execute as @e[type=zombie,tag=!modified_zombie] run data merge entity @s {CanBreakDoors:1b}
tag @e[type=zombie,tag=!modified_zombie] add modified_zombie

# =========================================================================
# 2. ESQUELETOS (Mitad de vida: 5 corazones)
# =========================================================================
execute as @e[type=skeleton,tag=!proc_skeleton] run attribute @s minecraft:max_health base set 10.0
execute as @e[type=skeleton,tag=!proc_skeleton] run data merge entity @s {Health:10.0f}
tag @e[type=skeleton,tag=!proc_skeleton] add proc_skeleton

# =========================================================================
# 3. ARAÑAS DE CUEVA (2 corazones y Súper Rápidas)
# =========================================================================
execute as @e[type=cave_spider,tag=!proc_cave_spider] run attribute @s minecraft:max_health base set 4.0
execute as @e[type=cave_spider,tag=!proc_cave_spider] run data merge entity @s {Health:4.0f}
execute as @e[type=cave_spider,tag=!proc_cave_spider] run attribute @s minecraft:movement_speed base set 0.6
tag @e[type=cave_spider,tag=!proc_cave_spider] add proc_cave_spider

# =========================================================================
# 4. CREEPERS (Tiempo de explosión aleatorio mediante sorteo)
# =========================================================================
execute as @e[type=creeper,tag=!proc_creeper,limit=1,sort=random] run data merge entity @s {Fuse:15}
execute as @e[type=creeper,tag=!proc_creeper,limit=1,sort=random] run data merge entity @s {Fuse:60}
execute as @e[type=creeper,tag=!proc_creeper,limit=1,sort=random] run data merge entity @s {Fuse:30}
tag @e[type=creeper,tag=!proc_creeper] add proc_creeper
