schedule function casual:mobs/loop_mobs 1s

# Zombies
execute as @e[type=zombie,tag=!modified_zombie] run attribute @s minecraft:movement_speed base set 0.3
execute as @e[type=zombie,tag=!modified_zombie] run attribute @s minecraft:follow_range base set 40.0
execute as @e[type=zombie,tag=!modified_zombie] run data merge entity @s {CanBreakDoors:1b}
tag @e[type=zombie,tag=!modified_zombie] add modified_zombie

# Skeletons
execute as @e[type=skeleton,tag=!proc_skeleton] run attribute @s minecraft:max_health base set 10.0
execute as @e[type=skeleton,tag=!proc_skeleton] run data merge entity @s {Health:10.0f}
tag @e[type=skeleton,tag=!proc_skeleton] add proc_skeleton

# Cave Spiders
execute as @e[type=cave_spider,tag=!proc_cave_spider] run attribute @s minecraft:max_health base set 4.0
execute as @e[type=cave_spider,tag=!proc_cave_spider] run data merge entity @s {Health:4.0f}
execute as @e[type=cave_spider,tag=!proc_cave_spider] run attribute @s minecraft:movement_speed base set 0.6
tag @e[type=cave_spider,tag=!proc_cave_spider] add proc_cave_spider

# Creepers
execute as @e[type=creeper,tag=!proc_creeper] run data merge entity @s {Fuse:25}
tag @e[type=creeper,tag=!proc_creeper] add proc_creeper
