# 1. Apagar la variable global del evento
scoreboard players set #global casual_evento 0

# 2. Devolver el borde del mundo a su estado normal (quita el color rojo de la pantalla)
worldborder warning distance 5
worldborder warning time 15

# 3. Mensaje sutil en el chat para avisar a los jugadores de que están a salvo
tellraw @a {"text":"[Luna de Sangre] El sol asciende y la maldición carmesí se desvanece...","color":"green"}
