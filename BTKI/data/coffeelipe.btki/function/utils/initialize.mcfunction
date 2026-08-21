# Initializes the datapack state.
scoreboard players operation @s coffeelipe.btki.prev_deaths = @s coffeelipe.btki.deaths
scoreboard players set @s coffeelipe.btki.keep 0
scoreboard players set @s coffeelipe.btki.roll 0

tellraw @s {"text":"Better Than Keep Inventory loaded.","color":"green"}
