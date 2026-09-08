execute if score @s btki.timer matches 0 run playsound minecraft:block.shulker_box.open player @a ~ ~ ~
execute if score @s btki.timer matches 10 run playsound minecraft:item.crossbow.quick_charge_3 player @a ~ ~ ~
execute if score @s btki.timer matches 24 run playsound minecraft:entity.villager.work_toolsmith player @a ~ ~ ~
execute if score @s btki.timer matches 34 run playsound minecraft:block.shulker_box.close player @a ~ ~ ~
execute if score @s btki.timer matches 35 run function coffeelipe.btki:features/sounds/shulker_box/reset_sound_machine