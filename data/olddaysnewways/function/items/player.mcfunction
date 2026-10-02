# Copper Helmet
	execute unless data entity @s equipment.head.components."minecraft:custom_data"{copper:1b} run \
		item modify entity @s armor.head olddaysnewways:copper/copper_helmet

# Copper Chestplate
	execute unless data entity @s equipment.chest.components."minecraft:custom_data"{copper:1b} run \
		item modify entity @s armor.chest olddaysnewways:copper/copper_chestplate

# Copper Leggings
	execute unless data entity @s equipment.legs.components."minecraft:custom_data"{copper:1b} run \
		item modify entity @s armor.legs olddaysnewways:copper/copper_leggings

# Copper Boots
	execute unless data entity @s equipment.feet.components."minecraft:custom_data"{copper:1b} run \
		item modify entity @s armor.feet olddaysnewways:copper/copper_boots

# Copper tools :D
	$execute unless data entity @s Inventory[{Slot:$(SelectedItemSlot)b}].components."minecraft:custom_data"{copper:1b} run \
		function olddaysnewways:items/modify_tools

# Gold tools :D
	$execute unless data entity @s Inventory[{Slot:$(SelectedItemSlot)b}].components."minecraft:custom_data"{silky:1b} run \
		function olddaysnewways:items/modify_tools