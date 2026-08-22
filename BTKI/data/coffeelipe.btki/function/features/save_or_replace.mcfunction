$data modify storage coffeelipe.btki:save_or_replace current set from entity @s Inventory[{Slot:$(slot)}]
$execute unless items entity @s inventory.$(slot) #coffeelipe.btki:protected run item replace entity @s inventory.$(slot) with air
execute if score #index btki.saveOrReplaceIndex matches 27.. run scoreboard players set #index btki.saveOrReplaceIndex 0
scoreboard players add #index btki.saveOrReplaceIndex 1