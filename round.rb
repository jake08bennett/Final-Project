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
		random_selection_array = [2, 2, 2, 2]
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
		if @random_picture == 1
			true
		end
	end

	def button_w
		@random_picture == 2
		puts"true"
	end

	def button_e
		if @random_picture == 3
			true
		end
	end
	
	def button_r
		if @random_picture == 4
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
			




