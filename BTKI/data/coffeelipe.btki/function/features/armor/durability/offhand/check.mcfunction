scoreboard players set #btkiInternal btki.durability 0

execute if items entity @s weapon.offhand #coffeelipe.btki:tools run return run function coffeelipe.btki:features/armor/durability/offhand/check_tools with storage coffeelipe.btki:process
execute if items entity @s weapon.offhand #coffeelipe.btki:armor run return run function coffeelipe.btki:features/armor/durability/offhand/check_armor with storage coffeelipe.btki:process

execute if items entity @s weapon.offhand minecraft:fishing_rod run return run scoreboard players operation #btkiInternal btki.durability = #btkiGeneral btki.durability
execute if items entity @s weapon.offhand minecraft:flint_and_steel run return run scoreboard players operation #btkiInternal btki.durability = #btkiGeneral btki.durability
execute if items entity @s weapon.offhand minecraft:brush run return run scoreboard players operation #btkiInternal btki.durability = #btkiGeneral btki.durability
execute if items entity @s weapon.offhand minecraft:shears run return run scoreboard players operation #btkiInternal btki.durability = #btkiShears btki.durability
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick run return run scoreboard players operation #btkiInternal btki.durability = #btkiCarrotOnAStick btki.durability
execute if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick run return run scoreboard players operation #btkiInternal btki.durability = #btkiWarpedFungusOnAStick btki.durability
execute if items entity @s weapon.offhand minecraft:bow run return run scoreboard players operation #btkiInternal btki.durability = #btkiBow btki.durability
execute if items entity @s weapon.offhand minecraft:crossbow run return run scoreboard players operation #btkiInternal btki.durability = #btkiCrossbow btki.durability
execute if items entity @s weapon.offhand minecraft:shield run return run scoreboard players operation #btkiInternal btki.durability = #btkiShield btki.durability
execute if items entity @s weapon.offhand minecraft:trident run return run scoreboard players operation #btkiInternal btki.durability = #btkiTrident btki.durability
execute if items entity @s weapon.offhand minecraft:mace run return run scoreboard players operation #btkiInternal btki.durability = #btkiMace btki.durability
execute if items entity @s weapon.offhand #minecraft:shulker_boxes run return run scoreboard players operation #btkiInternal btki.durability = #btkiNetherite btki.toolDurability