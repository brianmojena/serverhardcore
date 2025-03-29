# Function that runs when a player dies

# Decrement lives
scoreboard players remove @s lives 1

# Reset death count
scoreboard players set @s deaths 0

# Check if player has run out of lives
execute if score @s lives matches ..0 run gamemode spectator @s
execute if score @s lives matches ..0 run title @s title {"text":"¡☠️Has Muerto☠️!","color":"dark_red","bold":true}

# Show title with remaining lives if they still have some
execute if score @s lives matches 1.. run title @s title [{"text":"Te quedan ","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color":"red"},{"text":" vidas","color":"gold"}]
execute if score @s lives matches 1.. run title @s subtitle {"text":"¡Ten más cuidado la próxima vez!","color":"yellow"}