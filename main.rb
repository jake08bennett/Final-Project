require "gosu"
require_relative "round"
require_relative "options"
require_relative "z_order"

class BanterQuiz < Gosu::Window

 	def initialize
    super 1500, 844
    @background_image = Gosu::Image.new("images/gameshow.jpg")
   	@round_image = Round.new(560, 100)
   	@option_1 = Options.new(585, 500, Gosu::Image.new("images/Option-1.png"))
   	@option_2 = Options.new(585, 620, Gosu::Image.new("images/Option-2.png"))
   	@option_3 = Options.new(800, 500, Gosu::Image.new("images/Option-3.png"))
   	@option_4 = Options.new(800, 620, Gosu::Image.new("images/Option-4.png"))
    @font = Gosu::Font.new(20)
    @points = 0
	end

  def update
    if Gosu::button_down? Gosu::KbW
      if @round_image.button_w  == true
        @points += 25
      end
    end
    if Gosu::button_down? Gosu::KbQ
      if @round_image.button_q == true
        @points += 25
      end
    end  
    if Gosu::button_down? Gosu::KbE
      if @round_image.button_e == true
        @points += 25
      end
    end
    if Gosu::button_down? Gosu::KbR
      if @round_image.button_r == true
        @points += 25
      end
    end 

    @round_image.points

  end

  def draw
   @background_image.draw(0,0,0)
   @round_image.draw
   @option_1.draw
   @option_2.draw
   @option_3.draw
   @option_4.draw
   @font.draw("Score: #{@points}", 20, 20, ZOrder::UI, 1.0, 1.0, 0xff_ffff00)
  end

end
    

window = BanterQuiz.new
window.show
