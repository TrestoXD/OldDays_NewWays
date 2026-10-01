# Mooncicles
function olddaysnewways:mooncicles/daily_moon_check

# Boat
execute as @e[type=#olddaysnewways:all_boat_types] at @s if entity @e[type=#olddaysnewways:mob_stole_boat, distance=..0.8] run scoreboard players add @s boat_damage 1
execute as @e[type=#olddaysnewways:all_boat_types] at @s unless entity @e[type=#olddaysnewways:mob_stole_boat, distance=..0.8] run scoreboard players set @s boat_damage 0
execute as @e[scores={boat_damage=20..}] at @s run function olddaysnewways:mobs/break_boat_under_mob

# Silky
## ICE
execute as @a[scores={broken_ice=1..}] at @s if items entity @s weapon.mainhand golden_pickaxe[custom_data={silky:true}] anchored eyes run function olddaysnewways:raycast_ice
scoreboard players set @a[scores={broken_ice=1..}] broken_ice 0
