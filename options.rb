class Options

	attr_accessor :x, :y, :image
	
	def initialize(x, y, image)
		@image = image
		@x = x
		@y = y
		
	end


	def draw
		@image.draw(@x, @y, 1)
	end

end