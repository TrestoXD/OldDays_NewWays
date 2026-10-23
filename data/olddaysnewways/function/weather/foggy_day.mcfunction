
time of olddaysnewways:foggy_clock set 0t

data modify storage olddaysnewways:temp es_foggy set value 0b

execute if predicate olddaysnewways:foggy_chance run data modify storage olddaysnewways:temp es_foggy set value 1b

execute if data storage olddaysnewways:temp {es_foggy:0b} run time of olddaysnewways:foggy_clock pause
execute if data storage olddaysnewways:temp {es_foggy:1b} run time of olddaysnewways:foggy_clock rate 1
execute if data storage olddaysnewways:temp {es_foggy:1b} run time of olddaysnewways:foggy_clock resume

execute if data storage olddaysnewways:temp {es_foggy:1b} run function olddaysnewways:weather/cave_sounds

# DEBUG ONLY TEXTS
# execute if data storage olddaysnewways:temp {es_foggy:1b} run tellraw @a {"text":"[DEBUG] ¡Hoy ha salido día de NIEBLA JUGOVOID!"}
# execute if data storage olddaysnewways:temp {es_foggy:0b} run tellraw @a {"text":"[DEBUG] Hoy es un día despejado normal miñarro."}

schedule function olddaysnewways:weather/sincronize_morning 1000t replace