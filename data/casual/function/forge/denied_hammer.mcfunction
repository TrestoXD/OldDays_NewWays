# =====================================================
# Lógica de Denegación por Herramienta Incorrecta
# =====================================================

# 1. Reproducir un sonido metálico seco y pesado de rechazo (yunque forzado)
playsound block.anvil.land block @s ~ ~ ~ 0.6 1.8

# 2. Mostrar advertencia roja en la barra de acción del jugador
#title @s actionbar {"text":"⚠ ¡El metal rechaza el Martillo de Cobre! Se requiere un Martillo Profesional","color":"red"}

# 3. Generar partículas de chispas/daño simulando que el metal repele el golpe
particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 8