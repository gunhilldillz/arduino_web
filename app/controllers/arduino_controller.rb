class ArduinoController < ApplicationController

layout "arduino"

before_filter :set_up_servo
 
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

  def right

    @pos = Servoposx.all
    @inc_by_five = @pos.last.xloc.to_i
    @new_pos = @inc_by_five + 10
    Servoposx.create(xloc: @new_pos.to_i)

    redirect_to :back

  end

  def one_on
   
    @led_one.on
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    
   render :nothing => true
  
  end

  

  def one_off
    
    @led_one.off

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    render :nothing => true
  end

  def two_on
   
    @led_two.on
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    
   render :nothing => true
  
  end

  

  def two_off
    
    @led_two.off

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    render :nothing => true
  end

  def three_on
   
    @led_three.on
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    
   render :nothing => true
  
  end

  

  def three_off
    
    @led_three.off

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    render :nothing => true
  end

  def four_on
   
    @led_four.on
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    
   render :nothing => true
  
  end

  

  def four_off
    
    @led_four.off

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    render :nothing => true
 
  end

  def set_up_servo
    @servox = Dino::Components::Servo.new(pin: 9, board: DinoRails::Application.config.board)
    @servoy = Dino::Components::Servo.new(pin: 10, board: DinoRails::Application.config.board)
    @led_one = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
    @led_two = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)
    @led_three = Dino::Components::Led.new(pin: 8, board: DinoRails::Application.config.board)
    @led_four = Dino::Components::Led.new(pin: 7, board: DinoRails::Application.config.board)
    
  end
  
  
end
