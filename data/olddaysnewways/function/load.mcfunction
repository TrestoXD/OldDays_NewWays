# CONFIG

## MOBS
scoreboard objectives add zombie_speed dummy
scoreboard players set #config zombie_speed 25
scoreboard objectives add cave_spider_speed dummy
scoreboard players set #config cave_spider_speed 50

## MOOONS
scoreboard objectives add harvestmoon_random_tickrate dummy
scoreboard players set #config harvestmoon_random_tickrate 150

## MINECARTS
datapack enable minecart_improvements
gamerule max_minecart_speed 20

## MOBS
schedule function olddaysnewways:mobs/loop_mobs 1s
scoreboard objectives add dummy dummy
scoreboard objectives add boat_damage dummy



# BLOCKS

## BEDS
scoreboard objectives add sleeping_time minecraft.custom:minecraft.time_since_rest
scoreboard objectives add time_bed dummy

## SILKY
scoreboard objectives add broken_ice minecraft.mined:minecraft.ice

## TOOLS
schedule function olddaysnewways:items/schedule 1s replace