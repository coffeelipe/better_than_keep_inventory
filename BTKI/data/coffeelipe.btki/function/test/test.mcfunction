scoreboard objectives add threshold dummy
scoreboard players set @s threshold 25
scoreboard objectives add inventory_slots dummy
scoreboard objectives add index dummy
scoreboard players set @s index 0
scoreboard players set @s inventory_slots 8
execute store result storage test_storage:slot i int 0 run scoreboard players get @s index
function coffeelipe.btki:test/process_test with storage test_storage:slot
