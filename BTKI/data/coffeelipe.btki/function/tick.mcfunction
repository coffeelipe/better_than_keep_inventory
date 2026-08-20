# Runs every game tick and checks whether a player died.
execute as @a run function coffeelipe.btki:death/check
execute as @a[tag=coffeelipe.btki.restore_inventory,nbt=!{Health:0.0f}] run function coffeelipe.btki:death/restore_inventory
execute as @a[tag=coffeelipe.btki.restore_inventory] run tellraw @s {"text":"Restore tag active","color":"red"}