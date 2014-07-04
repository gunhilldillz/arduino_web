class ArduinoController < ApplicationController

  layout "application"

  before_action :set_up_servo
 
  def index
    
    if Led1pos.last.on_off.to_s == "on"
      @led_one.on
    else
      @led_one.off
      Led1pos.create(on_off: "off")
    end

    if Led2pos.last.on_off.to_s == "on"
      @led_two.on
    else
      @led_two.off
      Led2pos.create(on_off: "off")
    end

    if Led3pos.last.on_off.to_s == "on"
      @led_three.on
    else
      @led_three.off
      Led3pos.create(on_off: "off")
    end

    if Led4pos.last.on_off.to_s == "on"
      @led_four.on
    else
      @led_four.off
      Led4pos.create(on_off: "off")
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc  

  end


  def reset

    Servoposy.create(yloc: 90.to_i)
    Servoposx.create(xloc: 90.to_i)
    Led1pos.create(on_off: "off")
    Led2pos.create(on_off: "off")
    Led3pos.create(on_off: "off")
    Led4pos.create(on_off: "off")

    redirect_to :back

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

#LED functions

  def one_on
   
    if Led1pos.last.on_off.to_s == "off"
      @led_one.on
      Led1pos.create(on_off: "on")
    else
      
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
  
  end

  def one_off
    
    if Led1pos.last.on_off.to_s == "on"
      @led_one.off
      Led1pos.create(on_off: "off")
    else
      
    end
    
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
 
  end
  
  def two_on
   
    if Led2pos.last.on_off.to_s == "off"
      @led_two.on
      Led2pos.create(on_off: "on")
    else
      
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
  
  end

  def two_off
    
    if Led2pos.last.on_off.to_s == "on"
      @led_two.off
      Led2pos.create(on_off: "off")
    else
      
    end
    
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
 
  end

  def three_on
   
    if Led3pos.last.on_off.to_s == "off"
      @led_three.on
      Led3pos.create(on_off: "on")
    else
      
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
  
  end

  def three_off
    
    if Led3pos.last.on_off.to_s == "on"
      @led_three.off
      Led3pos.create(on_off: "off")
    else
      
    end
    
    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
 
  end

  def four_on
   
    if Led4pos.last.on_off.to_s == "off"
      @led_four.on
      Led4pos.create(on_off: "on")
    else
      
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc  
    
    redirect_to :back
  
  end

  def four_off
    
    if Led4pos.last.on_off.to_s == "on"
      @led_four.off
      Led4pos.create(on_off: "off")
    else
      
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
 
  end

  private

    def set_up_servo
     begin
      @servox = Dino::Components::Servo.new(pin: 9, board: DinoRails::Application.config.board)
      @servoy = Dino::Components::Servo.new(pin: 10, board: DinoRails::Application.config.board)
      
      @led_one = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
      @led_two = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)
      @led_three = Dino::Components::Led.new(pin: 8, board: DinoRails::Application.config.board)
      @led_four = Dino::Components::Led.new(pin: 7, board: DinoRails::Application.config.board) 
     rescue Dino::BoarNotFound
        flash.new.alert = "Please connect your Board to continue" 
     end

    end
  
  
end
