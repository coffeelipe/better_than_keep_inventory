scoreboard players set #btkiInternal btki.slotIndex 0
scoreboard players set #btkiInternal btki.slotIndexToByte 9
execute store result storage coffeelipe.btki:process slot int 1 run scoreboard players get #btkiInternal btki.slotIndex
execute store result storage coffeelipe.btki:process slotToByte int 1 run scoreboard players get #btkiInternal btki.slotIndexToByte
function coffeelipe.btki:features/inventory/process_inventory_slots