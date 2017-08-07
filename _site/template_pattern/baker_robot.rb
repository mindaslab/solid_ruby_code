# baker_robot.rb

require_relative "./robot_template.rb"

class BakerRobot < RobotTemplate
  def get_parts
    puts "Robots is getting flor eggs and sugar."
  end

  def make
    puts "Robt is mixing and baking cakes."
  end

  def test_work
    puts "Robot is testing if cake has good flavor."
  end
end
