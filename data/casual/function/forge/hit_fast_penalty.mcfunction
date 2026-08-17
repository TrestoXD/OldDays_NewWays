scoreboard players remove @s forge_progress 2
execute if score @s forge_progress matches ..0 run scoreboard players set @s forge_progress 0

scoreboard players set @s forge_quality 0

execute at @s run playsound minecraft:entity.item.break block @a ~ ~ ~ 1 0.8
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.05 15