# strategy_robot_2.rb

require 'json'

module Output_as_text
  def tell_about_yourself
    "I am #{@name}, muy model number is #{@model_number}"
  end
end


module Output_as_json
  def tell_about_yourself
    JSON.generate({name: @name, model_number: @model_number})
  end
end

class Robot
  attr_accessor :name, :model_number

  def initialize name, model_number
    @name = name
    @model_number = model_number
  end

  # include Output_as_text
  include Output_as_json
end

zigor = Robot.new "Zigor", 0
puts zigor.tell_about_yourself
