schedule function olddaysnewways:weather/foggy_day 24000t replace

time of olddaysnewways:foggy_clock set 0t
time of olddaysnewways:foggy_clock pause

execute if predicate olddaysnewways:foggy_chance run time of olddaysnewways:foggy_clock rate 1.0

execute if predicate olddaysnewways:foggy_chance run tellraw @a {"text":"[DEBUG] ¡Hoy ha salido día de NIEBLA!","color":"gold"}
execute unless predicate olddaysnewways:foggy_chance run tellraw @a {"text":"[DEBUG] Hoy es un día despejado normal.","color":"gray"}
