
class ServosController < ApplicationController
	before_action :set_up_servo
	
	def up
    @pos = Servoposy.all
    @inc_by_five = @pos.last.yloc.to_i
    @new_pos = @inc_by_five + 10
    Servoposy.create(yloc: @new_pos.to_i)

    Servoposy.create(yloc: 90.to_i)
    Servoposx.create(xloc: 90.to_i)

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
  
  def reset_servo
    Servoposx.create(on_off: "off")
    Servoposy.create(on_off: "off")
  end

  private

	 def set_up_servo
     begin
      @servox = Dino::Components::Servo.new(pin: 9, board: DinoRails::Application.config.board)
      @servoy = Dino::Components::Servo.new(pin: 10, board: DinoRails::Application.config.board)
    rescue Dino::BoarNotFound
    	flash.new.alert = "Please connect your Board to continue" 
    end
  end

end
