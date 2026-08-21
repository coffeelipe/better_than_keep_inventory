execute store result score @s coffeelipe.btki.roll run random value 0..99
execute if score @s coffeelipe.btki.roll >= @s threshold run tellraw @s {"text":"Roll: ","color":"green","extra":[{"score":{"name":"@s","objective":"coffeelipe.btki.roll"}},{text:" Current index: ","color":"green"},{"score":{"name":"@s","objective":"index"}}]}
execute if score @s coffeelipe.btki.roll < @s threshold run tellraw @s {"text":"Roll: ","color":"red","extra":[{"score":{"name":"@s","objective":"coffeelipe.btki.roll"}},{text:" Current index: ","color":"red"},{"score":{"name":"@s","objective":"index"}}]}
execute if score @s coffeelipe.btki.roll < @s threshold run function coffeelipe.btki:test/remove_item with storage test_storage:slot
scoreboard players add @s index 1
execute if score @s index matches 9.. run return run scoreboard players set @s index 0
function coffeelipe.btki:test/process_test with storage test_storage:slot