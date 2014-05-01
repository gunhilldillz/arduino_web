class ArduinoController < ApplicationController

layout "arduino"

before_filter :set_up_servo
before_filter :set_up_led, only: [:on, :off]  
  
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

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    render nothing: true
  end

  def off
    @led.off

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    render nothing: true
  end

  def right

    @pos = Servoposx.all
    @inc_by_five = @pos.last.xloc.to_i
    @new_pos = @inc_by_five + 10
    Servoposx.create(xloc: @new_pos.to_i)

    redirect_to :back

  end

  def set_up_servo
    @servox = Dino::Components::Servo.new(pin: 9, board: DinoRails::Application.config.board)
    @servoy = Dino::Components::Servo.new(pin: 10, board: DinoRails::Application.config.board)
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
    
  end
  
  def set_up_led
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
   
  end
end
