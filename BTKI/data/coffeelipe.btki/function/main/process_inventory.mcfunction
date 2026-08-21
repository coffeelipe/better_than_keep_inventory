tellraw @s [{entity:"@s", nbt:"Name"},{"text":"has died. Processing inventory...","color":"dark_aqua"}]

$data modify storage coffeelipe.btki:players/$(playerid) current_item set from storage coffeelipe.btki:main inventory[0]

$data remove storage coffeelipe.btki:players/$(playerid) current_item.Slot
$data modify entity @s equipment.mainhand set from storage coffeelipe.btki:players/$(playerid) current_item
$function coffeelipe.btki:main/process_item with storage coffeelipe.btki:store $(playerid)
item replace entity @s weapon.mainhand with air
execute if data storage coffeelipe.btki:main inventory[0] run function coffeelipe.btki:main/process_inventory with storage coffeelipe.btki:store $(playerid)
tag @s add coffeelipe.btki.restore_processed