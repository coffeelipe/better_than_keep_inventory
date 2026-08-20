# set roll scoreboard to random value between 0 and 99
execute store result score @s btki.roll run random value 0..99
execute if score @s btki.roll > @s btki.loss run function btki:death/keep_item