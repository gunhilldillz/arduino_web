require 'clockwork'
# require File.expand_path('../../config/boot',        __FILE__)
# require File.expand_path('../../config/environment', __FILE__)

module Clockwork

  configure do |config|
    config[:logger] = Logger.new(File.join(Dir.pwd, 'log', 'clockwork.log'))
    config[:tz] = "America/New_York"
  end

  handler do |job|
    puts "Running #{job}"
  end

  every(6.day, "Nightly Activity/Calorie Sync", at: '08:00') {
    `bundle exec rake activities:turn_on_switches`
  }
end
