# Runs every game tick and checks whether a player died.
execute as @a run function btki:death/check
execute as @a[tag=btki.restore_inventory,nbt=!{Health:0.0f}] run function btki:death/restore_inventory
execute as @a[tag=btki.restore_inventory] run tellraw @s {"text":"Restore tag active","color":"red"}