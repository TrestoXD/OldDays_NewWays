msg @s [Debug] New Moon activated. Applying buffs to crops.

gamerule random_tick_speed 300
execute if predicate casual:mooncicles/is_night run schedule function casual:mooncicles/moons/harvest_moon_events 100t replace
execute unless predicate casual:mooncicles/is_night run gamerule random_tick_speed 3
