$execute store result score #btkiInternal btki.itemCount run data get entity @s Inventory[{Slot:$(slotToByte)b}].count
function coffeelipe.btki:features/compute_loss
$execute unless items entity @s inventory.$(slot) #coffeelipe.btki:protected run item modify entity @s inventory.$(slot) coffeelipe.btki:count_setter
$execute if items entity @s inventory.$(slot) #coffeelipe.btki:protected run tellraw @s [{text:"PROTECTED ITEM! saving...", color:"light_purple"},{text: " Slot: ", color:"gray"},{text: "$(slot)", color:"white"}]
