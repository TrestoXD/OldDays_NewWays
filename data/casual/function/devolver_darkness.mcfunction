# 1. Si la Luna de Sangre sigue activa (#global casual_evento = 1), le devolvemos la niebla de oscuridad
execute if score #global casual_evento matches 1 run effect give @s minecraft:darkness 5 0 true

# 2. Le recordamos visualmente el peligro con el borde de pantalla rojo
execute if score #global casual_evento matches 1 run worldborder warning distance 15

# 3. Quitamos el avance para que se quede en espera listo para la próxima vez que muera
advancement revoke @s only casual:respawn_evento

# Si al jugador le queda poca vida, suena un latido de corazón tenso (un sonido nativo modificado en tono)
execute if score #global casual_evento matches 1 as @a[nbt={Health:6.0f}] run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 1 0.8

# Si la vida baja de 4 puntos, le da un sutil efecto de lentitud simulando el cansancio del dolor
execute if score #global casual_evento matches 1 as @a[nbt={Health:4.0f}] run effect give @s minecraft:slowness 3 0 true
