# Capa central (Tus pies y cabeza)
execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:anvil unless entity @e[type=minecraft:interaction,tag=forge_anvil,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["forge_anvil"]}
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:anvil unless entity @e[type=minecraft:interaction,tag=forge_anvil,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["forge_anvil"]}

# Capa de aproximación (Bloques adyacentes a tu alrededor)
execute positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:anvil unless entity @e[type=minecraft:interaction,tag=forge_anvil,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["forge_anvil"]}
execute positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:anvil unless entity @e[type=minecraft:interaction,tag=forge_anvil,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["forge_anvil"]}
execute positioned ~ ~ ~1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:anvil unless entity @e[type=minecraft:interaction,tag=forge_anvil,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["forge_anvil"]}
execute positioned ~ ~ ~-1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:anvil unless entity @e[type=minecraft:interaction,tag=forge_anvil,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["forge_anvil"]}
