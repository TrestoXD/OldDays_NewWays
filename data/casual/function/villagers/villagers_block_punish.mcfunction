# castigar_aldeano.mcfunction
title @p actionbar {"text":"Este aldeano está agotado. Necesita una cama libre para descansar.","color":"red"}
particle minecraft:angry_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 5
effect give @s minecraft:slowness 5 255 true