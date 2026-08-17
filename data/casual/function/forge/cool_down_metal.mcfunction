# =====================================================
# Lógica de Enfriamiento / Templado en Caldero
# =====================================================

# 1. Reproducir sonido de vapor/extinción en la posición del jugador
playsound block.fire.extinguish block @s ~ ~ ~ 1.0 0.7

# 2. Generar partículas de humo/vapor blanco simulando ebullición
particle campfire_cosy_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.02 12
particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.01 5

# 3. Mensaje visual sutil en la barra de acción indicando el templado exitoso
give @s minecraft:copper_ingot 1

# 4. Transmutación de ítem: Reemplaza el ítem "caliente" por el lingote templado/listo
# (Asegúrate de ajustar los identificadores de tus ítems personalizados si usas custom_data)
# clear @s iron_ingot[custom_data={hot:1}] 1
# give @s iron_ingot[custom_data={tempered:1}] 1