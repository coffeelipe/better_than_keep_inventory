execute if score @s btki.level matches 0..16 run return run function coffeelipe.btki:features/experience/compute_xp_low
execute if score @s btki.level matches 17..31 run return run function coffeelipe.btki:features/experience/compute_xp_mid
execute if score @s btki.level matches 32.. run return run function coffeelipe.btki:features/experience/compute_xp_high