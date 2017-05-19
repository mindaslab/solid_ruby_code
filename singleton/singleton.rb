class MySingleton
  @@object

  def self.create_object
    @@object ||= MySingleton.new
    @@object
  end
end

object = MySingleton.create_object
puts object.object_id
p object
object1 = MySingleton.create_object
puts object1.object_id
p object1
