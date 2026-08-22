gamerule keep_inventory true
scoreboard objectives add btki.difficulty dummy
scoreboard objectives add btki.lossPercent dummy
scoreboard objectives add btki.damagePercent dummy
scoreboard objectives add btki.deathCount deathCount
scoreboard objectives add btki.prev_deathCount dummy
scoreboard objectives add btki.roll dummy
scoreboard objectives add btki.saveOrReplaceIndex dummy

scoreboard players set #index btki.saveOrReplaceIndex 0

tellraw @s {"text":"Better Than Keep Inventory loaded!","color":"green"}