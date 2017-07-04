# liskov_wrong.rb

class Bird
  def lay_egg
  end

  def eat_food
  end
end

class Duck < Bird
end


# This is wrong
class ToyDuck < Duck
end
