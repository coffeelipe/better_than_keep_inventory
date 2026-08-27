function coffeelipe.btki:features/hotbar/process_hotbar
function coffeelipe.btki:features/inventory/process_inventory
function coffeelipe.btki:features/armor/process_armor
scoreboard players operation @s btki.prev_deathCount = @s btki.deathCount
execute if entity @s[nbt={Tags:[btki.xpDropped]}] run tag @s remove btki.xpDropped