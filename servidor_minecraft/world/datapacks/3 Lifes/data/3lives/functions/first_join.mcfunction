# Function that runs when a player joins for the first time
# Gives 3 lives to new players who don't have lives assigned yet

# Check if player has the lives score
execute as @a unless score @s lives matches -2147483648..2147483647 run scoreboard players set @s lives 3
execute as @a unless score @s lives matches -2147483648..2147483647 run tellraw @s [{"text":"¡Bienvenido! Has recibido ","color":"gold"},{"text":"3","color":"red"},{"text":" vidas.","color":"gold"}]