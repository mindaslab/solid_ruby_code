# circle.rb

class Circle
  attr_accessor :radius

  def initialize radius
    @radius = radius
  end

  def area
    3.14 * radius ** 2
  end

  def circumference
    2 * 3.14 * radius
  end
end

puts Circle.new(5).area
