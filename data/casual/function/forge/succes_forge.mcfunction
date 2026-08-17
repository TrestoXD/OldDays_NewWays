execute at @s run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 1.5

give @s minecraft:iron_nugget[custom_data={hot_metal:1b,quality:1}, item_name='{"text":"Metal al rojo vivo"}']

scoreboard players set @s forge_progress 0
