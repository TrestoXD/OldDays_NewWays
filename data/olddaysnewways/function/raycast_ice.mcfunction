execute if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
execute unless block ~ ~ ~ minecraft:water positioned ^ ^ ^0.2 if score @s broken_ice matches 1.. run function olddaysnewways:raycast_ice
