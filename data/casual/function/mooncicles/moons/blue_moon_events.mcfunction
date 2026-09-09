msg @s [Debug] Twilight Moon activated. Applying buffs to players.

effect give @a minecraft:luck 6 9 true
execute if predicate casual:mooncicles/is_night run schedule function casual:mooncicles/moons/blue_moon_events 100t replace
execute unless predicate casual:mooncicles/is_night run effect clear @a minecraft:luck


