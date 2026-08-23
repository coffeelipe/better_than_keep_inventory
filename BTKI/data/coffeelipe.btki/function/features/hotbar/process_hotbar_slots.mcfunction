function coffeelipe.btki:features/roll_for_save
execute if score @s btki.roll matches ..48 run function coffeelipe.btki:features/hotbar/on_failed_hotbar_roll

# increment slot index
scoreboard players add #btkiInternal btki.slotIndex 1
execute store result storage coffeelipe.btki:process slot int 1 run scoreboard players get #btkiInternal btki.slotIndex

execute if score #btkiInternal btki.slotIndex matches ..8 run function coffeelipe.btki:features/hotbar/process_hotbar_slots