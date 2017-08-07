# decorating_person.rb

require_relative "object.rb"

class Person
  attr_accessor :first_name, :last_name
end

class PersonDecorator
  attr_accessor :object

  def initialize object
    @object = object
  end

  def name
    object.first_name + " " + object.last_name
  end
end

man = Person.new
man.first_name = "Mark"
man.last_name = "Twain"
puts man.decorate.name
