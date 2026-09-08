function coffeelipe.btki:features/shulker_box/compute_offhand_usage
tag @s add btki.pending_sounds
particle happy_villager ^ ^1 ^2 0.5 0.1 0.5 1 4
item modify entity @s weapon.mainhand coffeelipe.btki:repair_quarter
scoreboard players set @s btki.successfulRepair 1
