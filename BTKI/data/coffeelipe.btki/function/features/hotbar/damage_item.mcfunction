$execute if score @s btki.difficulty matches 1 run item modify entity @s hotbar.$(slot) coffeelipe.btki:easy_damage
$execute if score @s btki.difficulty matches 2 run item modify entity @s hotbar.$(slot) coffeelipe.btki:normal_damage
$execute if score @s btki.difficulty matches 3 run item modify entity @s hotbar.$(slot) coffeelipe.btki:hard_damage

$execute store result score #btkiInternal btki.temp run data get entity @s Inventory[{Slot:$(slot)b}].components."minecraft:damage"
function coffeelipe.btki:features/hotbar/durability/check with storage coffeelipe.btki:process

$execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s hotbar.$(slot) with air