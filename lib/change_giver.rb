class ChangeGiver
  def initialize
    @answer = {}
    @change = 0
  end

  def make_change(paid, item_cost)
    @change = (paid * 100).to_i - (item_cost * 100).to_i

    calculate_denomination(:fives, 500)
    calculate_denomination(:ones, 100)
    calculate_denomination(:quarters, 25)

    return @answer
  end

  def calculate_denomination(denomination_name, denomination_value)
    counter = 0
    while (@change >= denomination_value)
      counter += 1
      @change -= denomination_value
    end
    if counter > 0
      @answer[denomination_name] = counter
    end
  end
end
