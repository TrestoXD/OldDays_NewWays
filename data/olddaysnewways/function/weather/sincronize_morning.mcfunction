execute if predicate olddaysnewways:morning run function olddaysnewways:weather/foggy_day
execute unless predicate olddaysnewways:morning run schedule function olddaysnewways:weather/sincronize_morning 5t replace

# execute unless predicate olddaysnewways:morning run tellraw @a {"text":"[DEBUG SYSTEM] Buscando amanecer...","color":"dark_gray"}
