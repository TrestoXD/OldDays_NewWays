summon marker ~ ~ ~ {Tags:["temp_spawner"]}

# summon the mobs at a random location within 2 blocks of the player, but not closer than 2 blocks to the player
execute at @s run spreadplayers ~ ~ 3 3 false @e[type=marker,tag=temp_spawner,limit=1]

# summon the mobs at the marker's location
execute at @e[type=marker,tag=temp_spawner] run summon zombie ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon skeleton ~ ~ ~

kill @e[type=marker,tag=temp_spawner]

tp @s ~ ~ ~0.1