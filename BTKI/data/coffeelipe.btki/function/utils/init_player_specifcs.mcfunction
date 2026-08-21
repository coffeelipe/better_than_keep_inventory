function coffeelipe.btki:utils/assign_id
execute store result storage coffeelipe.btki:store current_id int 1 run scoreboard players get @s coffeelipe.btki.player_id
function coffeelipe.btki:utils/init_personal_storages with storage coffeelipe.btki:store current_id
function coffeelipe.btki:main/difficulty/set_difficulty