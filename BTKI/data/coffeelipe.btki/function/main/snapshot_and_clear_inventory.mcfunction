data modify storage coffeelipe.btki:player snapshot set from entity @s Inventory
data modify storage coffeelipe.btki:player survivors set value []
clear @s
tag @s add coffeelipe.btki.should_restore
tag @s remove coffeelipe.btki.restore_processed

# Reset the prev_deaths score to the current deaths score to stop the main function from running again until the player dies again
scoreboard players operation @s coffeelipe.btki.prev_deaths = @s coffeelipe.btki.deaths