say @s has died. Processing inventory...
data modify storage coffeelipe.btki:death current_item set from storage coffeelipe.btki:death inventory[0]
data remove storage coffeelipe.btki:death current_item.Slot
data modify entity @s equipment.mainhand set from storage coffeelipe.btki:death current_item
function coffeelipe.btki:death/process_item
item replace entity @s weapon.mainhand with air
execute if data storage coffeelipe.btki:death inventory[0] run function coffeelipe.btki:death/process_inventory
tag @s add coffeelipe.btki.restore_processed