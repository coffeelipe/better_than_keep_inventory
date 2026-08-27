execute if items entity @s armor.* * run function coffeelipe.btki:features/armor/damage_equipped
execute store result score #btkiInternal btki.itemCount run data get entity @s equipment.offhand.count
function coffeelipe.btki:features/compute_loss
execute unless items entity @s weapon.offhand #coffeelipe.btki:protected run item modify entity @s weapon.offhand coffeelipe.btki:count_setter
execute if items entity @s weapon.offhand #coffeelipe.btki:durability_items run function coffeelipe.btki:features/armor/damage_offhand