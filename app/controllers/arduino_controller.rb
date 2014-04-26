class ArduinoController < ApplicationController

before_filter :set_up_servo
before_filter :set_up_led, only: [:on, :off]


# These are all functions that are not representative of our final controller methods
# All of these methods are here to show that 'Arduinos' can be created and controlled by 
# Calling methods on them.
# To "get started" visit: https://github.com/austinbv/dino
# Also please take a look at the config folder, be aware of "DinoRails"
  
  def index

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc

  end

  def up

    @pos = Servoposy.all
    @inc_by_five = @pos.last.yloc.to_i
    @new_pos = @inc_by_five + 10
    Servoposy.create(yloc: @new_pos.to_i)

    redirect_to :back

  end

  def down

    @pos = Servoposy.all
    @inc_by_five = @pos.last.yloc.to_i
    @new_pos = @inc_by_five - 10
    Servoposy.create(yloc: @new_pos.to_i)

    redirect_to :back

  end

  def left

    @pos = Servoposx.all
    @dec_by_five = @pos.last.xloc.to_i
    @new_pos = @dec_by_five - 10
    Servoposx.create(xloc: @new_pos.to_i)

    redirect_to :back

  end

  def on
    @led.on
    render :nothing => true
  end

  def off
    @led.off
    render :nothing => true
  end

  def right

    @pos = Servoposx.all
    @inc_by_five = @pos.last.xloc.to_i
    @new_pos = @inc_by_five + 10
    Servoposx.create(xloc: @new_pos.to_i)

    redirect_to :back

  end


  def increment!
    # Here 'period_id' is valid since it is an attribute and a method 
    # with that name will be available
    update_attribute(:period_id, period_id + 1)
  end

  def set_up_servo
    @servox = Dino::Components::Servo.new(pin: 9, board: DinoRails::Application.config.board)
    @servoy = Dino::Components::Servo.new(pin: 10, board: DinoRails::Application.config.board)
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
    
  end
  
  def set_up_led
    @led = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)
  end
end
