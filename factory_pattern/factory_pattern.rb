# factory_pattern.rb

class Food
  attr_reader :name

  def display
    "You have ordered #{@name}!"
  end
end

class Briyani < Food
  def initialize
    @name = "Hydrabadi Briyani"
  end
end

class Pizza < Food
  def initialize
    @name = "Italian Pizza"
  end
end

class Sushi < Food
  def initialize
    @name = "Japanese Sushi"
  end
end


class FoodVendor
  def self.get_food food_type
    food_type.new
  end
end

ordered_food = FoodVendor.get_food Briyani
puts ordered_food.display
