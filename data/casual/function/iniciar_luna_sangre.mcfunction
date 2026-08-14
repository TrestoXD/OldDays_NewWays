# 1. Ponemos la noche del día 8 (Fase de Luna Llena por defecto)
time set night
time add 192000

# 2. Variable global activada
scoreboard players set #global casual_evento 1

# 3. Sonidos y alertas sutiles en el chat
playsound minecraft:entity.wolf_angry.growl ambient @a ~ ~ ~ 1 0.4
tellraw @a {"text":"[Luna de Sangre] La atmósfera se vuelve pesada... La noche es letal.","color":"dark_red"}

# 4. TRUCO VISUAL: Oscuridad + Tinte Carmesí de Borde
# Aplicamos el efecto de Oscuridad pero con un truco: le damos un nivel para que la pantalla de los jugadores lata sutilmente en negro cada pocos segundos, simulando terror.
effect give @a minecraft:darkness 5 0 true

# Forzamos el parpadeo del borde del mapa en rojo (Esto tiñe el contorno de la pantalla de los jugadores sin ningún mod ni textura)
worldborder warning distance 15
worldborder warning time 1

# 5. Programar la limpieza para el amanecer
schedule function casual:limpiar_luna_sangre 11000t


# Darle superfuerza y velocidad instantánea a todos los monstruos que ya estén despiertos bajo el cielo
execute as @e[type=#minecraft:undead] at @s if predicate casual:bajo_el_cielo run effect give @s minecraft:strength 9999 2 true
execute as @e[type=#minecraft:undead] at @s if predicate casual:bajo_el_cielo run effect give @s minecraft:speed 9999 1 true
