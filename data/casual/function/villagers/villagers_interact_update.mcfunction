# Mover la barrera a la posición exacta del cuerpo del aldeano (sin ride)
execute as @e[type=minecraft:villager,distance=..2,limit=1,sort=nearest] at @s run tp @e[type=minecraft:interaction,tag=bloqueo_aldeano,distance=..2,limit=1] ~ ~ ~

# Si el aldeano sigue sin dormir, repetimos este movimiento en 2 ticks (súper ligero)
execute as @e[type=minecraft:villager,distance=..2,limit=1,sort=nearest] unless data entity @s Brain.memories."minecraft:last_slept" run schedule function casual:villagers/villagers_interact_update 2t