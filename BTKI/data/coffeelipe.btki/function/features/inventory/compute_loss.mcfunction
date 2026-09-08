scoreboard players operation #btkiInternal btki.temp = #btkiInternal btki.itemCount
scoreboard players operation #btkiInternal btki.temp *= @s btki.lossPercent
scoreboard players operation #btkiInternal btki.temp /= #btkiInternal btki.fixedPoint

# if division fails due to integer division, set temp to 1 to assert at least 1 item is lost
execute if score #btkiInternal btki.temp matches 0 run scoreboard players set #btkiInternal btki.temp 1

scoreboard players operation #btkiInternal btki.itemCount -= #btkiInternal btki.temp
scoreboard players operation @s btki.itemCount = #btkiInternal btki.itemCount