# Initializes the datapack state.
scoreboard objectives add btki.difficulty dummy
scoreboard objectives add btki.deaths deathCount
scoreboard objectives add btki.prev_deaths dummy
scoreboard objectives add btki.keep dummy
scoreboard objectives add btki.loss dummy
scoreboard objectives add btki.roll dummy
scoreboard objectives add btki.damage dummy
scoreboard objectives add btki.restore_slot dummy
scoreboard objectives add btki.restore_target dummy
scoreboard objectives add btki.restore_success dummy
scoreboard objectives add btki.restore_bridge_write dummy
scoreboard objectives add btki.restore_bridge_write2 dummy

execute as @a run function btki:utils/initialize

tellraw @a {"text":"Better Than Keep Inventory loaded.","color":"green"}
