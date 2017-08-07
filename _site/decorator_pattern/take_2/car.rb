# car.rb

class Car
  attr_accessor :model, :year, :color

  def decorate
    CarDecorator.new self
  end
end
