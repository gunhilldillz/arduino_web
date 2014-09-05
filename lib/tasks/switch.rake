
desc "Scheduled tasks called by Clockwork"

task turn_on_switches: :environment do
	Arduino.turn_on_switches
end

end
