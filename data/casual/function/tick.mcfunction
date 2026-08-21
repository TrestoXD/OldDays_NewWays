# 1. Cooldown pasivo de ritmo (Ya lo tenías)
execute as @a[scores={forge_cooldown=1..}] run scoreboard players remove @s forge_cooldown 1

# 2. TEMPLADO: Detección del caldero en el suelo (Ya lo tenías)
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{ready_to_cool:1}}}}] at @s run function casual:forge/cool_down_metal

# 3. ANCLAJE AUTOMÁTICO: Si tienes el martillo, genera las hitboxes (Ya lo tenías)
execute as @a[predicate=casual:forge/has_hammer] at @s run function casual:forge/anchor_anvil

# 4. LIMPIADOR AUTOMÁTICO: Destruye hitboxes si el yunque se rompe o el herrero se aleja (Ya lo tenías)
execute as @e[type=minecraft:interaction,tag=forge_anvil] at @s unless block ~ ~ ~ #minecraft:anvil run kill @s
execute as @e[type=minecraft:interaction,tag=forge_anvil] at @s unless entity @a[predicate=casual:forge/has_hammer,distance=..4] run kill @s

# 5. CONEXIÓN Y SEGURIDAD FASE 1 (NUEVO): Evita cocinar azúcar común en la fogata
# Si hay un ítem de azúcar en el suelo encima de una fogata que NO sea nuestro polvo puro, lo repele hacia arriba para que no se cocine
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:sugar"}}] at @s if block ~ ~ ~ minecraft:campfire unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{pure_iron_powder:1}}}}] run data modify entity @s Motion set value [0.0,0.2,0.0]
