msg @s [Debug] Breaking Dawn Moon activated. Applying buffs to undead.

effect give @e[type=#minecraft:undead] minecraft:strength 2 1 true
effect give @e[type=#minecraft:undead] minecraft:resistance 2 0 true

execute as @a[nbt={SleepTimer:1s}] run effect give @s minecraft:blindness 1 0 true

execute if predicate casual:mooncicles/is_night run schedule function casual:mooncicles/moons/blood_moon_events 20t replace