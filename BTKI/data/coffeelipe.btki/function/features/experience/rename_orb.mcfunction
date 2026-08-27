setblock ~ ~2 ~ minecraft:chest
item replace block ~ ~2 ~ container.0 with minecraft:paper
item modify block ~ ~2 ~ container.0 coffeelipe.btki:set_as_player_name
data modify entity @e[tag=btki.tempName,limit=1, distance=..2,type=experience_orb] CustomName set from block ~ ~2 ~ Items[0].components."minecraft:custom_name"
tag @e[tag=btki.tempName,limit=1, distance=..2,type=experience_orb] remove btki.tempName
setblock ~ ~2 ~ minecraft:air