# Si NO ha dormido recientemente:
execute unless data entity @s Brain.memories."minecraft:last_slept" run function casual:bloquear_aldeano

# Si SÍ ha dormido y estaba bloqueado previa o temporalmente:
execute if data entity @s Brain.memories."minecraft:last_slept" run function casual:desbloquear_aldeano