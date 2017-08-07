# object.rb

class Object
  def decorate
    eval "#{self.class}Decorator.new self"
  end
end
