require "./lib/change_giver"

register = ChangeGiver.new
item_cost = 0.25
paid = 1.0
puts change = register.make_change(paid, item_cost)
