require "gosu"
require_relative "image"
require_relative "options"

class BanterQuiz < Gosu::Window

 	def initialize
    super 1500, 844
    @background_image = Gosu::Image.new("images/gameshow.jpg")
   	@round_image = Image.new(560, 100)
   	@option_1 = Options.new(585, 500, Gosu::Image.new("images/Option-1.png"))
   	@option_2 = Options.new(585, 620, Gosu::Image.new("images/Option-2.png"))
   	@option_3 = Options.new(800, 500, Gosu::Image.new("images/Option-3.png"))
   	@option_4 = Options.new(800, 620, Gosu::Image.new("images/Option-4.png"))
	end

  def update

  end

  def draw
   @background_image.draw(0,0,0)
   @round_image.draw
   @option_1.draw
   @option_2.draw
   @option_3.draw
   @option_4.draw
  end

end
    

window = BanterQuiz.new
window.show
