$execute as @s[tag=!coffeelipe.btki.restore_processed] run return run function coffeelipe.btki:main/process_inventory with storage coffeelipe.btki:store $(playerid)

tellraw @s {"text":"Restoring inventory...","color":"green"}
execute store success score @s coffeelipe.btki.restore_target run item replace entity @s weapon.mainhand with air
tellraw @s [{"text":"Restore target command success: ","color":"yellow"},{"score":{"name":"@s","objective":"coffeelipe.btki.restore_target"}}]
tellraw @s [{"text":"Survivors: ","color":"yellow"},{"nbt":"survivors","storage":"coffeelipe.btki:main"}]

function coffeelipe.btki:main/restore_survivors

tellraw @s [{"text":"Player inventory after restore: ","color":"aqua"},{"nbt":"Inventory","entity":"@s"}]

tag @s remove coffeelipe.btki.restore_inventory
tag @s remove coffeelipe.btki.restore_processed