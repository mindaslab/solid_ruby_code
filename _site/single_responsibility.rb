# single_responsibility.rb

class Circle
  attr_accessor :radius

  def initialize radius
    @radius = radius
  end

  def area
    Constants::PI * radius ** 2
  end

  def circumference
    2 * Constants::PI * radius
  end
end

class Constants
  PI = 3.14
end

puts Circle.new(5).area
