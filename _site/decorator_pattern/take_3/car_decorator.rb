# car_decorator

class CarDecorator
  attr_accessor :object

  def initialize object
    @object = object
  end

  def to_s
    """
    Model: #{object.model}
    Year: #{object.year}
    Color: #{object.color}
    """
  end
end
