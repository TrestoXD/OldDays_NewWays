# tellraw @a {"text":"[DEBUG] Sonido de cueva disparado. Eligiendo intervalo...","color":"dark_gray"}

execute as @a at @s run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1.0 1.0 1.0

execute if data storage olddaysnewways:temp {es_foggy:1b} store result score #dado olddaysnewways_obj run random value 1..3

execute if data storage olddaysnewways:temp {es_foggy:1b} if score #dado olddaysnewways_obj matches 1 run schedule function olddaysnewways:weather/cave_sounds 900t replace
execute if data storage olddaysnewways:temp {es_foggy:1b} if score #dado olddaysnewways_obj matches 2 run schedule function olddaysnewways:weather/cave_sounds 1200t replace
execute if data storage olddaysnewways:temp {es_foggy:1b} if score #dado olddaysnewways_obj matches 3 run schedule function olddaysnewways:weather/cave_sounds 2400t replace
