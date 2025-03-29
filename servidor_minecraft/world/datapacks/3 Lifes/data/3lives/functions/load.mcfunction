# Initialization function that runs when the datapack is loaded

# Create scoreboard objectives
scoreboard objectives add lives dummy "Vidas"
scoreboard objectives add deaths deathCount

# Display lives on sidebar (optional)
scoreboard objectives setdisplay sidebar lives

tellraw @a [{"text":"Datapack de ","color":"gold"},{"text":"3 Vidas","color":"red"},{"text":" ha sido cargado!","color":"gold"}]

# Set initial lives for all players
execute as @a unless score @s lives matches 0..3 run scoreboard players set @s lives 3

# Display welcome message
tellraw @a {"text":"[3 Vidas] Datapack cargado correctamente!","color":"green"}

# Schedule the tick function to run every tick
schedule function 3lives:tick 1t replace