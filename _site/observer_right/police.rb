# police.rb

class Police
  attr_accessor :name

  def initialize name
    @name = name
  end

  def notify object
    puts "#{name} notified by object #{object.object_id}"
  end
end
