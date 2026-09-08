execute if score @s btki.deathCount > @s btki.prev_deathCount run function coffeelipe.btki:features/on_death

# 2 second timer + 5 ticks for playing sounds with a delay between them
function coffeelipe.btki:utils/timing/tick_timer
