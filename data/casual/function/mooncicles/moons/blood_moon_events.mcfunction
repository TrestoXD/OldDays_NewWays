msg @s [Debug] Breaking Dawn Moon activated. Applying buffs to undead.

gamerule minecraft:players_sleeping_percentage 101

effect give @e[type=#minecraft:undead] minecraft:strength 2 1 true
effect give @e[type=#minecraft:undead] minecraft:resistance 2 0 true

execute if predicate casual:mooncicles/is_night run schedule function casual:mooncicles/moons/blood_moon_events 20t replace
execute unless predicate casual:mooncicles/is_night run gamerule minecraft:players_sleeping_percentage 100