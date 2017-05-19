# alarm.rb

class Alarm
  attr_accessor :observers, :status

  def initialize
    @observers = []
    @status = :off
  end

  def notify_observers
    @observers.each do |observer|
      observer.notify(self)
    end
  end

  def set_off
    @status = :on
    notify_observers
  end

  def reset
    @status = :off
    notify_observers
  end
end
