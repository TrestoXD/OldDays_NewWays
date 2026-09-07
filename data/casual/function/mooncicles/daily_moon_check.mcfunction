# is full moon now?
execute if predicate casual:mooncicles/is_full_moon run function casual:mooncicles/full_moon_events

# shcedule the next check for the next day
schedule function casual:mooncicles/daily_moon_check 24000t replace
