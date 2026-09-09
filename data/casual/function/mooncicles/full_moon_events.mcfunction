execute store result score #moon_type dummy run random value 1..8

tellraw @s [{"text":"[Debug] Selecting moon... code: ","color":"yellow"},{"score":{"name":"#moon_type","objective":"dummy"},"color":"green"}]

execute if score #moon_type dummy matches 1 run tellraw @a {"text":"The \"Breaking Dawn Moon\" is rising! Undead enemies are stronger!","color":"red"}
execute if score #moon_type dummy matches 1 run function casual:mooncicles/moons/blood_moon_events

execute if score #moon_type dummy matches 2 run tellraw @a {"text":"The \"New Moon\" is rising! Crops grow faster!","color":"gold"}
execute if score #moon_type dummy matches 2 run function casual:mooncicles/moons/harvest_moon_events

execute if score #moon_type dummy matches 3 run tellraw @a {"text":"The \"Twilight Moon\" is rising! Fortune favors the miners!","color":"aqua"}
execute if score #moon_type dummy matches 3 run function casual:mooncicles/moons/blue_moon_events
