# Reset
scoreboard players operation #btkiInternal btki.level = @s btki.level

# Total experience from level formula until level 16: level^2 + 6 * level  
scoreboard players operation #btkiInternal btki.temp = #btkiInternal btki.level
scoreboard players operation #btkiInternal btki.temp *= #btkiInternal btki.temp
scoreboard players operation #btkiInternal btki.level *= #btkiSix btki.xpVar
scoreboard players operation #btkiInternal btki.level += #btkiInternal btki.temp

execute store result storage coffeelipe.btki:process xpValue int 1 run scoreboard players get #btkiInternal btki.level