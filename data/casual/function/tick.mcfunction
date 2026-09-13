# Mooncicles
function casual:mooncicles/daily_moon_check

# Boat
execute as @e[type=#casual:all_boat_types] at @s if entity @e[type=#casual:mob_stole_boat, distance=..0.8] run scoreboard players add @s boat_damage 1
execute as @e[type=#casual:all_boat_types] at @s unless entity @e[type=#casual:mob_stole_boat, distance=..0.8] run scoreboard players set @s boat_damage 0
execute as @e[scores={boat_damage=20..}] at @s run function casual:mobs/break_boat_under_mob

# Villagers
