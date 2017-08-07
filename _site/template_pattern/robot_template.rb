# robot_template.rb

class RobotTemplate
  def go
    start
    get_parts
    make
    test_work
    stop
  end

  def start
    puts "Robot is starting."
  end

  def stop
    puts "Robot stops."
  end
end
