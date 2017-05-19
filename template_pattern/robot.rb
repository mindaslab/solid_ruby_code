# root.rb

class Robot
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

  def get_parts
    puts "Robots is getting the engine."
  end

  def make
    puts "Robt is fitting engine into car"
  end

  def test_work
    puts "Robot is testing if engine fits right"
  end

  def stop
    puts "Robot stops"
  end
end
