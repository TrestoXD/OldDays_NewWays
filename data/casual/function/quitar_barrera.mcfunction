# Elimina la entidad de bloqueo
execute at @s run kill @e[type=minecraft:interaction,tag=bloqueo_aldeano,distance=..2]

# Aviso opcional de que ya está feliz
execute at @s run particle minecraft:villager_happy ~ ~1 ~ 0.3 0.3 0.3 0.1 7
execute at @s run playsound minecraft:entity.villager.yes ambient @p ~ ~ ~ 1 1