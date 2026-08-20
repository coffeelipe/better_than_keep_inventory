
execute if score @s coffeelipe.btki.difficulty matches 0 run function coffeelipe.btki:death/difficulty/peaceful
execute if score @s coffeelipe.btki.difficulty matches 1 run function coffeelipe.btki:death/difficulty/easy
execute if score @s coffeelipe.btki.difficulty matches 2 run function coffeelipe.btki:death/difficulty/normal
execute if score @s coffeelipe.btki.difficulty matches 3 run function coffeelipe.btki:death/difficulty/hard
tag @s add coffeelipe.btki.difficulty_set