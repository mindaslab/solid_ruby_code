# strategy_robot_1.rb

module Output_as_text
  def tell_about_yourself
    "I am #{@name}, muy model number is #{@model_number}"
  end
end

class Robot
  attr_accessor :name, :model_number

  def initialize name, model_number
    @name = name
    @model_number = model_number
  end

  include Output_as_text
end

zigor = Robot.new "Zigor", 0
puts zigor.tell_about_yourself
