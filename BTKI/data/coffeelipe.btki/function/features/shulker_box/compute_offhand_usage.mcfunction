execute store result score @s btki.itemCount run data get entity @s equipment.offhand.count
scoreboard players remove @s btki.itemCount 1
item modify entity @s weapon.offhand coffeelipe.btki:count_setter