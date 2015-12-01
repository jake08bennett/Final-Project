require "gosu"

class BanterQuiz < Gosu::Window

 
  
  
  def initialize
    super 1500, 844
    @background_image = Gosu::Image.new("images/gameshow.jpg")
  end

  def draw
   @background_image.draw(0,0,0)
  end

end
    

window = BanterQuiz.new
window.show
