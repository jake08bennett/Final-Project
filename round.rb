class Round

	attr_accessor :x, :y
	
	def initialize(x, y)
		@image = Gosu::Image.new(random_picture)
		@x = x
		@y = y
		@points = 0
		@random_picture = random_picture
	end

	

	def random_picture
		random_selection_array = [1, 2, 3]
	 	random_picture = random_selection_array.shuffle.sample
	 	if random_picture == 1
	 		@img = ("images/elephant.jpg")
	 	elsif random_picture == 2
	 		@img = ("images/piglet.jpg")
	 	elsif random_picture == 3
	 		@img = ("images/polarbear.jpg")
	 	end
	end



	def check_option_1
		if @random_picture == 1
			@points += 25
		end
	end


	def check_option_2
		if @random_picture == 2
			@points += 25
		end
	end


	def check_option_3
		if random_picture == 3
			@points += 25
		end
	end

	def points
		@points
	end 

	# def button_down
	# 	if button_down?(KbW) and polarbear == true
	# 		@score += 25
	# 	elsif button_down?(KbE) and piglet == true
	# 		@score += 25
	# 	elsif button_down?(KbR) and elephant == true
	# 		@score += 25
	# 	end
	# end


	def draw
		@image.draw(@x, @y, 1)
	end

end
			




