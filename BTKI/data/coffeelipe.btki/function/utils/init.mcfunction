gamerule keep_inventory true
scoreboard objectives add btki.difficulty dummy
scoreboard objectives add btki.lossPercent dummy
scoreboard objectives add btki.damagePercent dummy
scoreboard objectives add btki.deathCount deathCount
scoreboard objectives add btki.prev_deathCount dummy
scoreboard objectives add btki.level dummy
scoreboard objectives add btki.slotIndex dummy
scoreboard objectives add btki.temp dummy
scoreboard objectives add btki.itemCount dummy
scoreboard objectives add btki.slotIndexToByte dummy
scoreboard objectives add btki.fixedPoint dummy

scoreboard players set #btkiInternal btki.slotIndex 0
scoreboard players set #btkiInternal btki.temp 0
scoreboard players set #btkiInternal btki.itemCount 0
scoreboard players set #btkiInternal btki.fixedPoint 100
scoreboard players set #btkiInternal btki.slotIndexToByte 9

function coffeelipe.btki:utils/init_durability_constants

tellraw @s {"text":"Better Than Keep Inventory loaded!","color":"green"}