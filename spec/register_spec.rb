require "change_giver"

describe ChangeGiver do
  it "gives $0 back for a $10 item and $10 paid" do
    register = ChangeGiver.new
    item_cost = 10.0
    paid = 10.0
    change = register.make_change(paid, item_cost)
    expect(change).to eql({})
    # options for data coming back
    # {ones: 2, tens: 3, nickels: 0}
    # "Your change is: 2 ones, 3 tens"
  end
  it "gives $1 back for a $4 item and $5 paid" do
    register = ChangeGiver.new
    item_cost = 4.0
    paid = 5.0
    change = register.make_change(paid, item_cost)
    expect(change).to eql({ ones: 1 })
  end

  it "gives $6 back for a $4 item and $10 paid" do
    register = ChangeGiver.new
    item_cost = 4.0
    paid = 10.0
    change = register.make_change(paid, item_cost)
    expect(change).to eql({ fives: 1, ones: 1 })
  end

  it "gives $0.75 back for a $0.25 item and $1 paid" do
    register = ChangeGiver.new
    item_cost = 0.25
    paid = 1.0
    change = register.make_change(paid, item_cost)
    expect(change).to eql({ quarters: 3 })
  end
end
