####################################################
# The Builder pattern example.
####################################################

# The GuitarBuilder class uses the
# Builder pattern to offer an easier
# method of creating a complex and
# multi-part object, the guitar.
#
# The GuitarBuilder class defines
# all of the methods which will be
# used to perform various steps
# needed to properly configure a
# guitar object.
class GuitarBuilder
  attr_reader :guitar

  def initialize
    @guitar = Guitar.new
  end

  # In the guitar getter/reader method, we are
  # raising errors for cases in which business
  # rules for guitar objects are not fulfilled.
  # Should the guitar object be either incorrectly
  # configured or only partially configured, this
  # method will raise an error, thus enforcing
  # the configuration of _valid_ guitar objects.
  def guitar
    raise "too few strings" if @guitar.number_of_strings < 4
    raise "too many strings" if @guitar.number_of_strings > 12
    raise "improper body" if @guitar.body.width > 32 || @guitar.body.depth < 12
    raise "sound hole too small" if @guitar.sound_hole_diameter < 6
    raise "sound hole too large" if @guitar.sound_hole_diameter > 36
    @guitar
  end

  def select_number_of_strings(number)
    @guitar.build_strings(number)
  end

  def configure_strings(string_length, string_tension, string_linear_density)
    @guitar.strings.each do |string|
      string.length = string_length
      string.tension = string_tension
      string.linear_density = string_linear_density
    end
  end

  def craft_body(material, width, depth)
    @guitar.body = GuitarBody.new(material, width, depth)
  end

  def paint_body(color)
    @guitar.body.color = color
  end

  def set_sound_hole_diameter(diameter)
    @guitar.sound_hole = SoundHole.new(diameter)
  end

  def add_fretboard(length, width)
    @guitar.fretboard = Fretboard.new(length, width)
  end
end

####################################################
# Underlying classes.
####################################################

# This suite of implementations is arbitrary and
# isn't meant to be meaningful or interesting in
# any way.

class Guitar
  attr_accessor :body, :sound_hole, :fretboard,
                :strings

  def initialize
    @strings = []
  end

  def sound_hole_diameter
    @sound_hole.diameter
  end

  def number_of_strings
    @strings.length
  end

  def build_strings(number)
    number.times do
      @strings.push GuitarString.new
    end
  end
end

class GuitarString
  attr_accessor :length, :tension, :linear_density
end

class GuitarBody
  attr_reader :material, :width, :depth
  attr_accessor :color
  def initialize(material, width, depth)
    @material = material
    @width = width
    @depth = depth
  end
end

class SoundHole
  attr_reader :diameter
  def initialize(diameter)
    @diameter = diameter
  end
end

class Fretboard
  attr_reader :length, :width
  def initialize(length, width)
    @length = length
    @width = width
  end
end

####################################################
# Implementation example.
####################################################

# Configure the guitar using
# a guitar builder instance
guitar_builder = GuitarBuilder.new
guitar_builder.select_number_of_strings(6)
guitar_builder.configure_strings(27, 4, 0.7)
guitar_builder.craft_body("cedar", 24, 12)
guitar_builder.paint_body("cherry red")
guitar_builder.set_sound_hole_diameter(6)
guitar_builder.add_fretboard(27, 3)

# Reference the fully configured guitar
guitar = guitar_builder.guitar
