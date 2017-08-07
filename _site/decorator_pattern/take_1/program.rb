# program.rb

require_relative "car.rb"
require_relative "car_decorator.rb"

car = Car.new
car.model = "Tata Nano"
car.year = 2012
car.color = "Yellow"

decorated_car = CarDecorator.new car
puts decorated_car
