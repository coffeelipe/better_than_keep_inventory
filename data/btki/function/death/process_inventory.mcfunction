say @s has died. Processing inventory...
data modify storage btki:death current_item set from storage btki:death inventory[0]
data remove storage btki:death current_item.Slot
data modify entity @s equipment.mainhand set from storage btki:death current_item
function btki:death/process_item
item replace entity @s weapon.mainhand with air
execute if data storage btki:death inventory[0] run function btki:death/process_inventory
tag @s add btki.restore_processed