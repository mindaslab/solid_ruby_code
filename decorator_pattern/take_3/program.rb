# program.rb

require_relative "car.rb"
require_relative "car_decorator.rb"
require_relative "object.rb"

car = Car.new
car.model = "Tata Nano"
car.year = 2012
car.color = "Yellow"

puts car.decorate
