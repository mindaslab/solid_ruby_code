# automotive_robot.rb

require_relative "./robot_template.rb"

class AutomotiveRobot < RobotTemplate
  def get_parts
    puts "Robots is getting the engine."
  end

  def make
    puts "Robt is fitting engine into car"
  end

  def test_work
    puts "Robot is testing if engine fits right"
  end
end
