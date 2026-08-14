# 1. Revocamos el avance inmediatamente para poder volver a usarlo
advancement revoke @s only casual:trade_check

# 2. Si hiciste clic en un ALDEANO NORMAL (que aún no tiene barrera) y NO ha dormido:
execute as @e[type=minecraft:villager,sort=nearest,limit=1,distance=..5] at @s unless data entity @s Brain.memories."minecraft:last_slept" run function casual:poner_barrera

# 3. Si hiciste clic en la BARRERA INVISIBLE (porque el aldeano ya estaba bloqueado):
execute as @e[type=minecraft:interaction,tag=bloqueo_aldeano,sort=nearest,limit=1,distance=..5] at @s run function casual:aldeano_bloqueado_click