execute if items entity @s weapon.mainhand #shulker_boxes run function coffeelipe.btki:features/shulker_box/repair_with_offhand
execute if items entity @s weapon.offhand #shulker_boxes run item modify entity @s weapon.offhand coffeelipe.btki:repair_quarter

advancement revoke @s only coffeelipe.btki:repair_box