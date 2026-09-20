msg @s [Debug] Twilight Moon activated. Applying buffs to players.

effect give @a minecraft:luck 6 9 true
execute if predicate olddaysnewways:mooncicles/is_night run schedule function olddaysnewways:mooncicles/moons/blue_moon_events 100t replace
execute unless predicate olddaysnewways:mooncicles/is_night run effect clear @a minecraft:luck


