# liskov_wrong.rb

class Rectangle
  attr_accessor :length, :width

  def area
    @length * @width
  end
end

class Square < Rectangle
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
tell_rectangles_dimentions s
