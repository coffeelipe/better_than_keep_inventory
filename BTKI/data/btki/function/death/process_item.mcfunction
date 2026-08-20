execute if items entity @s weapon.mainhand #btki:protected run return run function btki:death/keep_item
function btki:death/roll_for_save
data remove storage btki:death inventory[0]
