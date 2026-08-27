scoreboard players set #btkiInternal btki.durability 0

$execute if items entity @s hotbar.$(slot) #coffeelipe.btki:tools run return run function coffeelipe.btki:features/hotbar/durability/check_tools with storage coffeelipe.btki:process
$execute if items entity @s hotbar.$(slot) #coffeelipe.btki:armor run return run function coffeelipe.btki:features/hotbar/durability/check_armor with storage coffeelipe.btki:process

$execute if items entity @s hotbar.$(slot) minecraft:fishing_rod run return run scoreboard players operation #btkiInternal btki.durability = #btkiGeneral btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:flint_and_steel run return run scoreboard players operation #btkiInternal btki.durability = #btkiGeneral btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:brush run return run scoreboard players operation #btkiInternal btki.durability = #btkiGeneral btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:shears run return run scoreboard players operation #btkiInternal btki.durability = #btkiShears btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:carrot_on_a_stick run return run scoreboard players operation #btkiInternal btki.durability = #btkiCarrotOnAStick btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:warped_fungus_on_a_stick run return run scoreboard players operation #btkiInternal btki.durability = #btkiWarpedFungusOnAStick btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:bow run return run scoreboard players operation #btkiInternal btki.durability = #btkiBow btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:crossbow run return run scoreboard players operation #btkiInternal btki.durability = #btkiCrossbow btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:shield run return run scoreboard players operation #btkiInternal btki.durability = #btkiShield btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:trident run return run scoreboard players operation #btkiInternal btki.durability = #btkiTrident btki.durability
$execute if items entity @s hotbar.$(slot) minecraft:mace run return run scoreboard players operation #btkiInternal btki.durability = #btkiMace btki.durability
$execute if items entity @s hotbar.$(slot) #minecraft:shulker_boxes run return run scoreboard players operation #btkiInternal btki.durability = #btkiNetherite btki.toolDurability