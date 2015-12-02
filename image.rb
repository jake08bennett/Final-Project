class Image

	attr_accessor :x, :y
	
	def initialize(x, y)
		@image = Gosu::Image.new(random_picture)
		@x = x
		@y = y
		
	end

	def random_picture
		random_selection_array = [1, 2, 3]
	 	random_picture = random_selection_array.shuffle.sample
	 	if random_picture == 1
	 		@img = ("images/elephant.jpg")
	 	elsif random_picture == 2
	 		@img = ("images/piglet.jpg")
	 	else
	 		@img = ("images/polarbear.jpg")
	 	end
	end

	def draw
		@image.draw(@x, @y, 1)
	end

end
			




