$execute unless items entity @s inventory.$(slot) #coffeelipe.btki:protected run item replace entity @s inventory.$(slot) with air
$execute if items entity @s inventory.$(slot) #coffeelipe.btki:protected run tellraw @s [{text:"PROTECTED ITEM! saving...", color:"light_purple"},{text: " Slot: ", color:"gray"},{text: "$(slot)", color:"white"}]
