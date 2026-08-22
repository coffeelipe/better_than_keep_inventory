tellraw @s [{text:"current inventory index: "},{storage:"coffeelipe.btki:process", nbt:"slot"}]
function coffeelipe.btki:features/roll_for_save
execute if score @s btki.roll < @s btki.lossPercent run function coffeelipe.btki:features/inventory/on_failed_inventory_roll

# increment slot index
scoreboard players add #btkiInternal btki.slotIndex 1
execute store result storage coffeelipe.btki:process slot int 1 run scoreboard players get #btkiInternal btki.slotIndex

execute if score #btkiInternal btki.slotIndex matches ..26 run function coffeelipe.btki:features/inventory/process_inventory_slots