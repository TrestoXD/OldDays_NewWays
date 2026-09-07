# Si la Luna de Sangre está activa (#global casual_evento = 1), lo despertamos a la fuerza
# execute if score #global casual_evento matches 1 run text @s actionbar {"text":"La energía de la Luna de Sangre te impide conciliar el sueño...","color":"red"}
execute if score #global casual_evento matches 1 run damage @s 1 minecraft:magic

# Quitamos el avance para que el sistema vuelva a funcionar la próxima vez que toque la cama
advancement revoke @s only casual:intento_dormir
