# At first I tried to simply modify the player's inventory from the survivors storage
# but that didn't work, because I can't simply transpose an Array of items into the player's inventory,
# Player inventories are not stored as an Array, but as a List of items with a Slot tag.
# So instead, I summon an invisible armor stand, give it the item from the survivors storage, and then use the item replace command to put it into the player's inventory. (I get the slot from the Slot tag of the item in the survivors storage, and the armor stand has such Slot tag as well, so I can use that to determine which slot to put the item into.)
# This unfortunately means hardcoding every possible slot, and also calling this function multiple times recursively one for each item in the survivors storage.
# I can't think of a better way to do this, if anyone sees this and has a better idea, please let me know.
# The lack of simple loops in Minecraft commands really makes this a pain. Mojang pls fix.  

execute unless data storage coffeelipe.btki:death survivors[0] run return 0
summon armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Invulnerable:true,Marker:true,Tags:["coffeelipe.btki.restore_item"]}
data modify storage coffeelipe.btki:death current_item set from storage coffeelipe.btki:death survivors[0]
execute store result score @s coffeelipe.btki.restore_slot run data get storage coffeelipe.btki:death current_item.Slot 1
data remove storage coffeelipe.btki:death current_item.Slot
data modify entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] equipment.mainhand set from storage coffeelipe.btki:death current_item
scoreboard players set @s coffeelipe.btki.restore_success 0
execute if data entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] equipment.mainhand run scoreboard players set @s coffeelipe.btki.restore_success 1
execute if score @s coffeelipe.btki.restore_slot matches 0 store success score @s coffeelipe.btki.restore_success run item replace entity @s hotbar.0 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 1 run item replace entity @s hotbar.1 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 2 run item replace entity @s hotbar.2 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 3 run item replace entity @s hotbar.3 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 4 run item replace entity @s hotbar.4 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 5 run item replace entity @s hotbar.5 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 6 run item replace entity @s hotbar.6 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 7 run item replace entity @s hotbar.7 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 8 run item replace entity @s hotbar.8 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 9 run item replace entity @s inventory.0 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 10 run item replace entity @s inventory.1 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 11 run item replace entity @s inventory.2 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 12 run item replace entity @s inventory.3 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 13 run item replace entity @s inventory.4 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 14 run item replace entity @s inventory.5 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 15 run item replace entity @s inventory.6 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 16 run item replace entity @s inventory.7 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 17 run item replace entity @s inventory.8 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 18 run item replace entity @s inventory.9 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 19 run item replace entity @s inventory.10 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 20 run item replace entity @s inventory.11 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 21 run item replace entity @s inventory.12 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 22 run item replace entity @s inventory.13 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 23 run item replace entity @s inventory.14 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 24 run item replace entity @s inventory.15 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 25 run item replace entity @s inventory.16 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 26 run item replace entity @s inventory.17 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 27 run item replace entity @s inventory.18 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 28 run item replace entity @s inventory.19 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 29 run item replace entity @s inventory.20 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 30 run item replace entity @s inventory.21 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 31 run item replace entity @s inventory.22 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 32 run item replace entity @s inventory.23 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 33 run item replace entity @s inventory.24 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 34 run item replace entity @s inventory.25 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 35 run item replace entity @s inventory.26 from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 36 run item replace entity @s armor.feet from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 37 run item replace entity @s armor.legs from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 38 run item replace entity @s armor.chest from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 39 run item replace entity @s armor.head from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_slot matches 40 run item replace entity @s weapon.offhand from entity @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand] weapon.mainhand
execute if score @s coffeelipe.btki.restore_success matches 1 run data remove storage coffeelipe.btki:death survivors[0]
kill @e[tag=coffeelipe.btki.restore_item,limit=1,distance=..2,type=armor_stand]
execute if data storage coffeelipe.btki:death survivors[0] run function coffeelipe.btki:death/restore_survivors