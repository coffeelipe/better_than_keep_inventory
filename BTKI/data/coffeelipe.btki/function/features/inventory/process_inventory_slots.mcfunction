function coffeelipe.btki:features/inventory/inventory_save_or_replace with storage coffeelipe.btki:process

# increment slot index
scoreboard players add #btkiInternal btki.slotIndex 1
scoreboard players add #btkiInternal btki.slotIndexToByte 1
execute store result storage coffeelipe.btki:process slot int 1 run scoreboard players get #btkiInternal btki.slotIndex
execute store result storage coffeelipe.btki:process slotToByte int 1 run scoreboard players get #btkiInternal btki.slotIndexToByte

execute if score #btkiInternal btki.slotIndex matches ..26 run function coffeelipe.btki:features/inventory/process_inventory_slots