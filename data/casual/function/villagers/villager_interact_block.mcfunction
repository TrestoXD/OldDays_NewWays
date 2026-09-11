# Buscar al aldeano que está pegado a esta barrera y comprobar si ya durmió para liberarlo
execute as @e[type=minecraft:villager,distance=..3,sort=nearest,limit=1] if data entity @s Brain.memories."minecraft:last_slept" run function casual:villagers/villagers_block_remove

# Si el aldeano sigue sin dormir, mostrar el aviso en pantalla y mantener la barrera
execute as @e[type=minecraft:villager,distance=..3,sort=nearest,limit=1] unless data entity @s Brain.memories."minecraft:last_slept" at @s run playsound minecraft:entity.villager.no ambient @p ~ ~ ~ 1 1
execute as @e[type=minecraft:villager,distance=..3,sort=nearest,limit=1] unless data entity @s Brain.memories."minecraft:last_slept" at @s run particle minecraft:angry_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 3