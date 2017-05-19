require_relative "./automotive_robot.rb"
require_relative "./baker_robot.rb"

class RobotBuilder

  def self.create robot_type

    robot = case robot_type
    when :automotive_robot
      AutomotiveRobot.new
    when :baker_robot
      BakerRobot.new
    end

    robot
  end

end
