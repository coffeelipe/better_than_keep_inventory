execute store result score @s btki.level run data get entity @s XpLevel
function coffeelipe.btki:features/experience/compute_xp_value
data get entity @s
execute as @s[tag=!btki.xpDropped, scores={btki.level=1..}] run function coffeelipe.btki:features/experience/summon_xp_orb with storage coffeelipe.btki:process
xp set @s 0 levels
xp set @s 0 points

