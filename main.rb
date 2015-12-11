require "gosu"
require_relative "round"
require_relative "options"
require_relative "z_order"

class BanterQuiz < Gosu::Window

 	def initialize
    super 1500, 844
    @background_image = Gosu::Image.new("images/gameshow.jpg")
   	@round_image1 = Round.new(560, 100)
    @round_image2 = Round.new(560, 100)
    @round_image3 = Round.new(560, 100)
   	@option_1 = Options.new(585, 500, Gosu::Image.new("images/Option-1.png"))
   	@option_2 = Options.new(585, 620, Gosu::Image.new("images/Option-2.png"))
   	@option_3 = Options.new(800, 500, Gosu::Image.new("images/Option-3.png"))
   	@option_4 = Options.new(800, 620, Gosu::Image.new("images/Option-4.png"))
    @score = Gosu::Font.new(20)
    @round_command1 = Gosu::Font.new(20)
    @round_command2 = Gosu::Font.new(20)
    @round_command3 = Gosu::Font.new(20)
    @points = 0
	end

  def update
    if (Gosu::button_down? Gosu::KbW) && (Gosu::button_down? Gosu::KbRight)
      if @round_image1.button_w  == true
        @points += 25
      end
    end
    if (Gosu::button_down? Gosu::KbQ) && (Gosu::button_down? Gosu::KbRight)
      if @round_image1.button_q == true
        @points += 25
      end
    end  
    if (Gosu::button_down? Gosu::KbE) && (Gosu::button_down? Gosu::KbRight)
      if @round_image1.button_e == true
        @points += 25
      end
    end
    if (Gosu::button_down? Gosu::KbR) && (Gosu::button_down? Gosu::KbRight)
      if @round_image1.button_r == true
        @points += 25
      end
    end 

    if (Gosu::button_down? Gosu::KbW) && (Gosu::button_down? Gosu::KbUp)
      if @round_image2.button_w  == true
        @points += 25
      end
    end
    if (Gosu::button_down? Gosu::KbQ) && (Gosu::button_down? Gosu::KbUp)
      if @round_image2.button_q == true
        @points += 25
      end
    end  
    if (Gosu::button_down? Gosu::KbE) && (Gosu::button_down? Gosu::KbUp)
      if @round_image2.button_e == true
        @points += 25
      end
    end
    if (Gosu::button_down? Gosu::KbR) && (Gosu::button_down? Gosu::KbUp)
      if @round_image2.button_r == true
        @points += 25
      end
    end 
     if (Gosu::button_down? Gosu::KbR) && (Gosu::button_down? Gosu::KbUp)
      if @round_image2.button_r == true
        @points += 25
      end
    end 

    if (Gosu::button_down? Gosu::KbW) && (Gosu::button_down? Gosu::KbDown)
      if @round_image3.button_w  == true
        @points += 25
      end
    end
    if (Gosu::button_down? Gosu::KbQ) && (Gosu::button_down? Gosu::KbDown)
      if @round_image3.button_q == true
        @points += 25
      end
    end  
    if (Gosu::button_down? Gosu::KbE) && (Gosu::button_down? Gosu::KbDown)
      if @round_image3.button_e == true
        @points += 25
      end
    end
    if (Gosu::button_down? Gosu::KbR) && (Gosu::button_down? Gosu::KbDown)
      if @round_image3.button_r == true
        @points += 25
      end
    end 

 

    @round_image1.points

  end

  def draw
   @background_image.draw(0,0,0)
 
   @option_1.draw
   @option_2.draw
   @option_3.draw
   @option_4.draw
   @score.draw("Score: #{@points}", 20, 20, ZOrder::UI, 1.0, 1.0, 0xff_ffff00)
   
   @round_command1.draw("Hold right arrow for round 1", 20, 40, ZOrder::UI, 1.0, 1.0, 0xff_ffff00)
   @round_command2.draw("Hold up arrow for round 2", 20, 60, ZOrder::UI, 1.0, 1.0, 0xff_ffff00)
   @round_command3.draw("Hold down arrow for round 2", 20, 80, ZOrder::UI, 1.0, 1.0, 0xff_ffff00)

   @round_image1.draw  if Gosu::button_down? Gosu::KbRight
   @round_image2.draw if Gosu::button_down? Gosu::KbUp
   @round_image3.draw if Gosu::button_down? Gosu::KbDown
  end

end
    

window = BanterQuiz.new
window.show
