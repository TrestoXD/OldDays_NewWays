# revocar el advancement inmediatamente para poder volver a lanzarlo
advancement revoke @s only casual:interact_anvil

# el jugador debe seguir un ritmo
execute if score @s forge_cooldown matches ..14 run function casual:forge/hit_fast_penalty
execute if score @s forge_cooldown matches ..14 run return 1

# Resetear el cooldown del ritmo si golpea bien
scoreboard players set @s forge_cooldown 20

#validacion de herramienta
execute if items entity @s weapon.mainhand *[custom_data={hammer_type:"stone"}] if entity @e[type=interaction,distance=..3,limit=1,tag=requires_pro_metal] run function casual:forge/denied_hammer

execute unless items entity @s weapon.mainhand *[custom_data={hammer_type:"stone"}] run function casual:forge/hit_anvil
execute if items entity @s weapon.mainhand *[custom_data={hammer_type:"stone"}] unless entity @e[type=interaction,distance=..3,limit=1, tag=requires_pro_metal] run function casual:forge/hit_anvil