class SwitchesController < ApplicationController
  
	def index
    if Switch1pos.last.on_off.to_s == "on"
      @switch_one.on
    else
      @switch_one.off
      Switchpos.create(on_off: "off")
    end

    if Switch2pos.last.on_off.to_s == "on"
      @switch_two.on
    else
      @switch_two.off
      Swithpos.create(on_off: "off")
    end

    if Switchpos.last.on_off.to_s == "on"
      @switch_three.on
    else
      @switch_three.off
     Switchpos.create(on_off: "off")
    end

    if Switch4pos.last.on_off.to_s == "on"
      @switch_four.on
    else
      @switch_four.off
      Switch4pos.create(on_off: "off")
    end
  end

# TODO No for model here! Let us try having a json file instead. 
  def reset
    Switch1pos.create(on_off: "off")
    Switch2pos.create(on_off: "off")
    Switch3pos.create(on_off: "off")
    Switch4pos.create(on_off: "off")

    redirect_to :back

  end
  def one_on
    if Switch1pos.last.on_off.to_s == "off"
      @led_one.on
      Led1pos.create(on_off: "on")
    else
      
    end

    @servox.position = Servoposx.last.xloc
    @servoy.position = Servoposy.last.yloc
    
    redirect_to :back
  
  end

  def one_off
    
    if Switch1pos.last.on_off.to_s == "on"
      @led_one.off
      Switch1pos.create(on_off: "off")
    else
      
    end
  
    redirect_to :back
 
  end
  
  def two_on
   
    if Switch2pos.last.on_off.to_s == "off"
      @Switch_two.on
      Switch2pos.create(on_off: "on")
    else
      
    end
    redirect_to :back
  
  end

  def two_off
    
    if Switch2pos.last.on_off.to_s == "on"
      @switch_two.off
      Switch2pos.create(on_off: "off")
    else
      
    end
    
    redirect_to :back
 
  end

  def three_on
   
    if Switch3pos.last.on_off.to_s == "off"
      @switch_three.on
      Switch3pos.create(on_off: "on")
    else
      
    end
    redirect_to :back
  
  end

  def three_off
    
    if Switch3pos.last.on_off.to_s == "on"
      @switch_three.off
      SWitch3pos.create(on_off: "off")
    else
      
    end
  
    redirect_to :back
 
  end

  def four_on
   
    if Switch4pos.last.on_off.to_s == "off"
      @switch_four.on
      Switch4pos.create(on_off: "on")
    else
      
    end

    redirect_to :back
  
  end

  def four_off
    
    if Switch4pos.last.on_off.to_s == "on"
      @switch_four.off
      Switch4pos.create(on_off: "off")
    else
      
    end
    redirect_to :back
  end
end
