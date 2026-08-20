# Initializes the datapack state.
scoreboard objectives add coffeelipe.btki.difficulty dummy
scoreboard objectives add coffeelipe.btki.deaths deathCount
scoreboard objectives add coffeelipe.btki.prev_deaths dummy
scoreboard objectives add coffeelipe.btki.keep dummy
scoreboard objectives add coffeelipe.btki.loss dummy
scoreboard objectives add coffeelipe.btki.roll dummy
scoreboard objectives add coffeelipe.btki.damage dummy
scoreboard objectives add coffeelipe.btki.restore_slot dummy
scoreboard objectives add coffeelipe.btki.restore_target dummy
scoreboard objectives add coffeelipe.btki.restore_success dummy
scoreboard objectives add coffeelipe.btki.restore_bridge_write dummy
scoreboard objectives add coffeelipe.btki.restore_bridge_write2 dummy

execute as @a run function coffeelipe.btki:utils/initialize

tellraw @a {"text":"Better Than Keep Inventory loaded.","color":"green"}
