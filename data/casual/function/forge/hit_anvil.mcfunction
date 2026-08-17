# =====================================================
# Lógica de golpeo de metal en el yunque
# =====================================================

# Incrementa el progreso en la forja
scoreboard players add @s forge_progress 1

playsound block.anvil.use block @s ~ ~ ~ 1 1.2
particle crit ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# si el cobre esta listo cambia de funcion
execute if score @s forge_progress matches 5.. run scoreboard players add @s forge_quality 1

# condicion de victoria
execute if score @s forge_progress matches 10.. run function casual:forge/success_forge
