$execute store result score #btkiInternal btki.itemCount run data get entity @s Inventory[{Slot:$(slotToByte)b}].count
function coffeelipe.btki:features/inventory/compute_loss
$execute unless items entity @s inventory.$(slot) #coffeelipe.btki:protected run item modify entity @s inventory.$(slot) coffeelipe.btki:count_setter
$execute if items entity @s inventory.$(slot) #coffeelipe.btki:durability_items run function coffeelipe.btki:features/inventory/damage_item with storage coffeelipe.btki:process