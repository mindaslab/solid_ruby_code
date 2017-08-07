# liskov_right.rb

class Rectangle
  attr_accessor :length, :width

  def area
    @length * @width
  end
end

class Square < Rectangle
  def length= number
    @length = @width = number
  end

  def width= number
    @length = @width = number
  end
end

def tell_rectangles_dimentions rectangle
  puts "Hello I am a rectangle of #{rectangle.width} X #{rectangle.length} and my area is #{rectangle.area()}\n"
end

r = Rectangle.new
r.width = 5
r.length = 4
tell_rectangles_dimentions r

s = Square.new
s.length = 5
puts s
tell_rectangles_dimentions s
