$execute store result score #btkiInternal btki.itemCount run data get entity @s Inventory[{Slot:$(slot)b}].count
function coffeelipe.btki:features/compute_loss
$execute unless items entity @s hotbar.$(slot) #coffeelipe.btki:protected run item modify entity @s hotbar.$(slot) coffeelipe.btki:count_setter
$execute if items entity @s hotbar.$(slot) #coffeelipe.btki:durability_items run function coffeelipe.btki:features/hotbar/damage_item with storage coffeelipe.btki:process
