summon marker ~ ~ ~ {Tags:["temp_spawner"]}

# summon the mobs at a random location within 1 blocks of the player, but not closer than 5 blocks to the player
execute at @s run spreadplayers ~ ~ 1 5 false @e[type=marker,tag=temp_spawner,limit=1]

# summon the mobs at the marker's location
execute at @e[type=marker,tag=temp_spawner] run summon zombie ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon skeleton ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon creeper ~ ~ ~
execute at @e[type=marker,tag=temp_spawner] run summon spider ~ ~ ~

kill @e[type=marker,tag=temp_spawner]
