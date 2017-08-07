# alarm.rb

class Alarm
  attr_accessor :owner, :police, :status

  def initialize owner, police
    @owner = owner
    @police = police
  end

  def set_off
    @status = :on
    puts "setting off alarm #{self.object_id}"
    owner.notify(self)
    police.notify(self)
  end

  def reset
    @status = :off
    puts "resetting alarm #{self.object_id}"
    owner.notify(self)
    police.notify(self)
  end
end
