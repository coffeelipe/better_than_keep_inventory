scoreboard players operation #btkiInternal btki.level = @s btki.level

scoreboard players operation #btkiInternal btki.temp = #btkiInternal btki.level
scoreboard players operation #btkiInternal btki.temp *= #btkiInternal btki.temp
scoreboard players operation #btkiInternal btki.temp *= #btkiThree btki.xpVar
scoreboard players operation #btkiInternal btki.level *= #btkiFortyOne btki.xpVar
scoreboard players operation #btkiInternal btki.level += #btkiThreeSixty btki.xpVar
scoreboard players operation #btkiInternal btki.temp -= #btkiInternal btki.level

execute store result storage coffeelipe.btki:process xpValue int 1 run scoreboard players get #btkiInternal btki.temp