# Checks whether a player died before running the pack's main logic. 
execute as @a if score @s coffeelipe.btki.deaths > @s coffeelipe.btki.prev_deaths run function coffeelipe.btki:run
 
#Diagnostic message
execute as @a[tag=coffeelipe.btki.should_restore] run tellraw @s {"text":"Restore tag active","color":"red"}