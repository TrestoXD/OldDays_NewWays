
# CONFIG

# MOBS
scoreboard objectives add zombie_speed dummy
scoreboard players set #config zombie_speed 25
scoreboard objectives add cave_spider_speed dummy
scoreboard players set #config cave_spider_speed 50

# MOOONS
scoreboard objectives add harvestmoon_random_tickrate dummy
scoreboard players set #config harvestmoon_random_tickrate 30

# Minecarts
datapack enable minecart_improvements
gamerule max_minecart_speed 20

# Mobs
schedule function olddaysnewways:mobs/loop_mobs 1s
scoreboard objectives add dummy dummy
scoreboard objectives add boat_damage dummy
