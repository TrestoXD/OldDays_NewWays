# Si el caldero tiene nivel 1, se vacía por completo
execute if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron

# Si el caldero tiene nivel 2, baja a nivel 1
execute if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]

# Si el caldero tiene nivel 3, baja a nivel 2
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
