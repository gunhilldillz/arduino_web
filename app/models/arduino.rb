class Arduino < ActiveRecord::Base
	# turn on the switches for 
@front_switch = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)
@end_switch = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)

def turn_on_switches
	if @front_switch
  		@front_switch.send(:on, 30)
  		@front_switch.send(:on, 30)
	else
		raise "Failed to turn on the switches" # Send a push notification here  		
	end

end
