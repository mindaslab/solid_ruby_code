# liskov.rb

def Mammal
  def feed_baby
  end
end

class EggLayingMammal < Mammal
  def lay_egg
  end
end

class BirthGivingMammal < Mammal
  def give_birth
  end
end

class Goat < BirthGivingMammal
end

class Platypus < EggLayingMammal
end
