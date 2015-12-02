require "gosu"
require_relative "image"

class BanterQuiz < Gosu::Window

 	def initialize
    super 1500, 844
    @background_image = Gosu::Image.new("images/gameshow.jpg")
   	@round_image = Image.new(560, 100)
	end

  def update

  end

  def draw
   @background_image.draw(0,0,0)
   @round_image.draw

  end

end
    

window = BanterQuiz.new
window.show
