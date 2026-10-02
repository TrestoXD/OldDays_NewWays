summon marker ~ ~ ~ {Tags:["temp_spawner"]}

# 2. Esparcir el marcador de forma aleatoria dentro de un radio específico
# (En este ejemplo: distancia mínima 5 bloques, rango máximo 15 bloques)
execute at @s run spreadplayers ~ ~ 5 15 false @e[type=marker,tag=temp_spawner,limit=1]

# 3. Selección aleatoria usando la ID interna de Minecraft (sin scoreboards adicionales)
# Cada comando tiene una probabilidad individual de ejecutarse en la posición del marcador
execute at @e[type=marker,tag=temp_spawner] run summon zombie ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon skeleton ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon creeper ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon spider ~ ~ ~

# 4. Eliminar el marcador temporal inmediatamente para no dejar basura en el mundo
kill @e[type=marker,tag=temp_spawner]
