data modify storage btki:death inventory set from entity @s Inventory
data modify storage btki:death survivors set value []
clear @s
tag @s add btki.restore_inventory
tag @s remove btki.restore_processed

# Reset the prev_deaths score to the current deaths score to stop the death function from running again until the player dies again
scoreboard players operation @s btki.prev_deaths = @s btki.deaths