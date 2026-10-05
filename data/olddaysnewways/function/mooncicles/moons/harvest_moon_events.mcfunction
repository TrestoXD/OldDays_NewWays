msg @s [Debug] New Moon activated. Applying buffs to crops.

execute store result storage olddaysnewways:temp random_tick int 1 run scoreboard players get #config harvestmoon_random_tickrate

function olddaysnewways:mooncicles/apply_tick_speed with storage olddaysnewways:temp
execute if predicate olddaysnewways:mooncicles/is_night run schedule function olddaysnewways:mooncicles/moons/harvest_moon_events 100t replace
execute unless predicate olddaysnewways:mooncicles/is_night run gamerule random_tick_speed 3
