# circle_better.rb

class Circle
  attr_accessor :radius
  PI = 3.14

  def initialize radius
    @radius = radius
  end

  def area
    Circle::PI * radius ** 2
  end

  def circumference
    2 * Circle::PI * radius
  end
end

puts Circle.new(5).area
