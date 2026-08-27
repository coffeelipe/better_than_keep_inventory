scoreboard players operation #btkiInternal btki.level = @s btki.level

scoreboard players operation #btkiInternal btki.temp = #btkiInternal btki.level
scoreboard players operation #btkiInternal btki.temp *= #btkiInternal btki.temp
scoreboard players operation #btkiInternal btki.temp *= #btkiFive btki.xpVar
scoreboard players operation #btkiInternal btki.level *= #btkiOneSixThree btki.xpVar
scoreboard players operation #btkiInternal btki.level += #btkiTwoTwoTwenty btki.xpVar
scoreboard players operation #btkiInternal btki.temp -= #btkiInternal btki.level

execute store result storage coffeelipe.btki:process xpValue int 1 run scoreboard players get #btkiInternal btki.temp