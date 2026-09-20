# is full moon now?
execute if predicate olddaysnewways:mooncicles/is_full_moon run function olddaysnewways:mooncicles/full_moon_events

# shcedule the next check for the next day
schedule function olddaysnewways:mooncicles/daily_moon_check 24000t replace
