execute if score @s btki.difficulty matches 1 run item modify entity @s armor.head coffeelipe.btki:easy_damage
execute if score @s btki.difficulty matches 2 run item modify entity @s armor.head coffeelipe.btki:normal_damage
execute if score @s btki.difficulty matches 3 run item modify entity @s armor.head coffeelipe.btki:hard_damage
execute store result score #btkiInternal btki.temp run data get entity @s equipment.head.components."minecraft:damage"
function coffeelipe.btki:features/armor/durability/equipment/check_helmet
execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s armor.head with air

execute if score @s btki.difficulty matches 1 run item modify entity @s armor.chest coffeelipe.btki:easy_damage
execute if score @s btki.difficulty matches 2 run item modify entity @s armor.chest coffeelipe.btki:normal_damage
execute if score @s btki.difficulty matches 3 run item modify entity @s armor.chest coffeelipe.btki:hard_damage
execute store result score #btkiInternal btki.temp run data get entity @s equipment.chest.components."minecraft:damage"
function coffeelipe.btki:features/armor/durability/equipment/check_chest
execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s armor.chest with air

execute if score @s btki.difficulty matches 1 run item modify entity @s armor.legs coffeelipe.btki:easy_damage
execute if score @s btki.difficulty matches 2 run item modify entity @s armor.legs coffeelipe.btki:normal_damage
execute if score @s btki.difficulty matches 3 run item modify entity @s armor.legs coffeelipe.btki:hard_damage
execute store result score #btkiInternal btki.temp run data get entity @s equipment.legs.components."minecraft:damage"
function coffeelipe.btki:features/armor/durability/equipment/check_legs
execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s armor.legs with air

execute if score @s btki.difficulty matches 1 run item modify entity @s armor.feet coffeelipe.btki:easy_damage
execute if score @s btki.difficulty matches 2 run item modify entity @s armor.feet coffeelipe.btki:normal_damage
execute if score @s btki.difficulty matches 3 run item modify entity @s armor.feet coffeelipe.btki:hard_damage
execute store result score #btkiInternal btki.temp run data get entity @s equipment.feet.components."minecraft:damage"
function coffeelipe.btki:features/armor/durability/equipment/check_feet
execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s armor.feet with air

execute if score @s btki.difficulty matches 1 run item modify entity @s armor.body coffeelipe.btki:easy_damage
execute if score @s btki.difficulty matches 2 run item modify entity @s armor.body coffeelipe.btki:normal_damage
execute if score @s btki.difficulty matches 3 run item modify entity @s armor.body coffeelipe.btki:hard_damage
execute store result score #btkiInternal btki.temp run data get entity @s equipment.body.components."minecraft:damage"
function coffeelipe.btki:features/armor/durability/equipment/check_body
execute if score #btkiInternal btki.durability matches 1.. if score #btkiInternal btki.temp >= #btkiInternal btki.durability run item replace entity @s armor.body with air



