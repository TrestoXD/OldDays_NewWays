scoreboard objectives add casual_evento dummy
function casual:comprobar_noche
# Inicia el bucle de detección automática (Se ejecutará en 1 segundo)
schedule function casual:loop_mobs 1s
