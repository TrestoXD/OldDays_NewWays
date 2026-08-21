# 1. Sonido de éxito vanilla
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5

# 2. CONSUMO SINOCHRONIZADO 1.21: Quitamos exactamente 1 metal caliente que coincida con los componentes del debug
clear @s minecraft:iron_nugget[custom_data={hot_metal:1}] 1

# 3. Entregar el metal moldeado listo para el caldero
give @s minecraft:iron_nugget[custom_data={ready_to_cool:1},item_name='Metal Moldeado al Rojo Vivo'] 1

# 4. Resetear progreso de golpes del jugador
scoreboard players set @s forge_progress 0
