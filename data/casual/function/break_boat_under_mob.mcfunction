execute if entity @e[type=minecraft:creeper,distance=..1.2] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0,ignited:1b}

playsound minecraft:block.wood.break neutral @a ~ ~ ~ 1 0.8

summon item ~ ~ ~ {Item:{id:"minecraft:oak_planks",count:3b}}
summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:2b}}

kill @s