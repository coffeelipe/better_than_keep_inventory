# set roll scoreboard to random value between 0 and 99
execute store result score @s coffeelipe.btki.roll run random value 0..99
execute if score @s coffeelipe.btki.roll > @s coffeelipe.btki.loss run function coffeelipe.btki:main/keep_item