class Round

	attr_accessor :x, :y
	
	def initialize(x, y)
		@image = Gosu::Image.new(random_picture)
		@x = x
		@y = y
		@score = 0
	end

	def random_picture
		random_selection_array = [1, 2, 3]
	 	random_picture = random_selection_array.shuffle.sample
	 	if random_picture == 1
	 		@img = ("images/elephant.jpg")
	 		elephant = true
	 	elsif random_picture == 2
	 		@img = ("images/piglet.jpg")
	 		piglet = true
	 	else
	 		@img = ("images/polarbear.jpg")
	 		polarbear = true
	 	end
	end

	def button_down
		if button_down?(KbW) and polarbear == true
			@score += 25
		elsif button_down?(KbE) and piglet == true
			@score += 25
		elsif button_down?(KbR) and elephant == true
			@score += 25
		end
	end


	def draw
		@image.draw(@x, @y, 1)
	end

end
			




