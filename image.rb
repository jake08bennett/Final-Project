class Image

	attr_accessor :x, :y
	
	def initialize(x, y)
		@image = Gosu::Image.new("images/dog.jpg")
		@x = x
		@y = y
		
	end

	# def random_picture
	# 	random_selection_array = [1, 2, 3]
	# 	random_picture = random_selection_array.shuffle.sample
	# 	if random_picture == 1
	# 		@img = ("images/tiger.jpg")
	# 	elsif random_picture == 2
	# 		@img = ("images/dog.jpg")
	# 	else
	# 		@img = ("images/bunnies.jpg")
	# 	end
	# end

	def draw
		@image.draw(@x, @y, 1)
	end

end
			




