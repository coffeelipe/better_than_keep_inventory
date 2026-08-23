function coffeelipe.btki:features/hotbar/hotbar_save_or_replace with storage coffeelipe.btki:process

# increment slot index
scoreboard players add #btkiInternal btki.slotIndex 1
execute store result storage coffeelipe.btki:process slot int 1 run scoreboard players get #btkiInternal btki.slotIndex

execute if score #btkiInternal btki.slotIndex matches ..8 run function coffeelipe.btki:features/hotbar/process_hotbar_slots