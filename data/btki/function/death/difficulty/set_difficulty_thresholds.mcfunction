
execute if score @s btki.difficulty matches 0 run function btki:death/difficulty/peaceful
execute if score @s btki.difficulty matches 1 run function btki:death/difficulty/easy
execute if score @s btki.difficulty matches 2 run function btki:death/difficulty/normal
execute if score @s btki.difficulty matches 3 run function btki:death/difficulty/hard
tag @s add btki.difficulty_set