# robot.rb 

class Robot
  attr_accessor :name, :model_number

  def initialize name, modegl_number
    @name = name
    @model_number = model_number
  end

  def tell_about_yourself
    "I am #{@name}, muy model number is #{@model_number}"
  end
end

zigor = Robot.new "Zigor", 0
puts zigor.tell_about_yourself
