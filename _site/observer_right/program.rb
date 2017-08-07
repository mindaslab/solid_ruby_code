# program.rb

require_relative "police.rb"
require_relative "owner.rb"
require_relative "alarm.rb"

police = Police.new "Police"
owner = Owner.new "Owner"
alarm = Alarm.new
alarm.observers << police
alarm.observers << owner
alarm.set_off
