scoreboard players set @s btki.difficulty 1
function coffeelipe.btki:utils/difficulty/set_thresholds
scoreboard players operation @s btki.prev_deathCount = @s btki.deathCount
scoreboard players set @s btki.itemCount 0

tellraw @s {"text":"Player set up!","color":"green"}