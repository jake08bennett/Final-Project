class Round

	attr_accessor :x, :y
	
	def initialize(x, y)
		@image = Gosu::Image.new(random_picture_selection)
		@x = x
		@y = y
		@points = 0
		@random_picture = 0
	end

	

	def random_picture_selection
		random_selection_array = [1, 2, 3, 4]
	 	@random_picture = random_selection_array.shuffle.sample
	 	if @random_picture == 4
	 		@img = ("images/elephant.jpg")
	 	elsif @random_picture == 3
	 		@img = ("images/piglet.jpg")
	 	elsif @random_picture == 2
	 		@img = ("images/polarbear.jpg")
	 	elsif @random_picture == 1
	 		@img = ("images/tiger.jpg")
	 	end
	end

	def button_q
		if @img == ("images/tiger.jpg")
			true
		end
	end

	def button_w
		if @img == ("images/polarbear.jpg")
			true
		end
	end

	def button_e
		if @img == ("images/piglet.jpg")
			true
		end
	end
	
	def button_r
		if @img == ("images/elephant.jpg")
			true
		end
	end


	def points
		@points
	end 


	def draw
		@image.draw(@x, @y, 1)
	end

end
			




