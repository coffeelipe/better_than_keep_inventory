scoreboard players set @s coffeelipe.btki.difficulty 1
execute if score @s coffeelipe.btki.difficulty matches 0 run function coffeelipe.btki:main/difficulty/peaceful
execute if score @s coffeelipe.btki.difficulty matches 1 run function coffeelipe.btki:main/difficulty/easy
execute if score @s coffeelipe.btki.difficulty matches 2 run function coffeelipe.btki:main/difficulty/normal
execute if score @s coffeelipe.btki.difficulty matches 3 run function coffeelipe.btki:main/difficulty/hard