# Function that runs every tick

# Check for first-time players and give them lives
function 3lives:first_join

# Check for player deaths
execute as @a[scores={deaths=1..}] run function 3lives:on_death

# Schedule this function to run again next tick
schedule function 3lives:tick 1t replace