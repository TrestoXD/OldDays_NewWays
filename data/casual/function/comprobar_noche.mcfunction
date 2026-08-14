# Tira un dado aleatorio del 1 al 10
execute store result score #dado casual_evento run random value 1..10

# Si cae en 1 (10% de probabilidad), activa la Luna de Sangre y cambia el calendario a Luna Llena
execute if score #dado casual_evento matches 1 run function casual:iniciar_luna_sangre

# Si no sale Luna de Sangre (2 al 10), nos aseguramos de apagar el evento por si el día anterior estuvo activo
execute if score #dado casual_evento matches 2..10 run scoreboard players set #global casual_evento 0

# Se programa automáticamente para la siguiente noche (24000 ticks)
schedule function casual:comprobar_noche 24000t
