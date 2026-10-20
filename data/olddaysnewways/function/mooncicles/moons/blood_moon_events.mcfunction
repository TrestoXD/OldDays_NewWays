msg @s [Debug] Breaking Dawn Moon activated. Applying buffs to undead.

gamerule minecraft:players_sleeping_percentage 101

effect give @e[type=#minecraft:undead] minecraft:strength 2 1 true
effect give @e[type=#minecraft:undead] minecraft:resistance 2 0 true

execute if predicate olddaysnewways:mooncicles/is_night run schedule function olddaysnewways:mooncicles/moons/blood_moon_events 20t replace
execute unless predicate olddaysnewways:mooncicles/is_night store result storage olddaysnewways:temp value int 1 run scoreboard players get #config def_sleeprate
execute unless predicate olddaysnewways:mooncicles/is_night run function olddaysnewways:mooncicles/apply_sleeprate with storage olddaysnewways:temp