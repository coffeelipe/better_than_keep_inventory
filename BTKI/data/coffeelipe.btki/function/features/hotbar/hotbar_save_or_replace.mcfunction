$execute store result score #btkiInternal btki.itemCount run data get entity @s Inventory[{Slot:$(slot)b}].count
scoreboard players operation #btkiInternal btki.temp = #btkiInternal btki.itemCount
scoreboard players operation #btkiInternal btki.temp *= @s btki.lossPercent
scoreboard players operation #btkiInternal btki.temp /= #btkiInternal btki.fixedPoint

# if division fails due to integer division, set temp to 1 to assert at least 1 item is lost
execute if score #btkiInternal btki.temp matches 0 run scoreboard players set #btkiInternal btki.temp 1

scoreboard players operation #btkiInternal btki.itemCount -= #btkiInternal btki.temp
tellraw @s [{score:{name:"#btkiInternal",objective:"btki.itemCount"}}, {text:" | "}, {score:{name:"#btkiInternal",objective:"btki.temp"}}]
scoreboard players operation @s btki.itemCount = #btkiInternal btki.itemCount

$execute unless items entity @s hotbar.$(slot) #coffeelipe.btki:protected run item modify entity @s hotbar.$(slot) coffeelipe.btki:count_setter
$execute if items entity @s hotbar.$(slot) #coffeelipe.btki:protected run tellraw @s [{text:"PROTECTED ITEM! saving...", color:"light_purple"},{text: " Slot: ", color:"gray"},{text: "$(slot)", color:"white"}]