execute if score @s btki.difficulty matches 1 run item modify entity @s weapon.offhand coffeelipe.btki:easy_damage
execute if score @s btki.difficulty matches 2 run item modify entity @s weapon.offhand coffeelipe.btki:normal_damage
execute if score @s btki.difficulty matches 3 run item modify entity @s weapon.offhand coffeelipe.btki:hard_damage

execute store result score #btkiInternal btki.temp run data get entity @s equipment.offhand.components."minecraft:damage"
function coffeelipe.btki:features/armor/durability/offhand/check
execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s weapon.offhand with air