scoreboard players set @s btki.difficulty 1
function coffeelipe.btki:utils/difficulty/set_thresholds
scoreboard players operation @s btki.prev_deathCount = @s btki.deathCount
scoreboard players set @s btki.itemCount 0
execute store result score @s btki.level run data get entity @s XpLevel

tellraw @s {"text":"Player set up!","color":"green"}