#snake_body.rb

class SnakeBody
	attr_reader :last_x, :last_y, :x, :y
	
	def initialize(window, snake)
		@window = window
		@snake = snake
		@icon = Gosu::Image.new(@window, "img/snake.bmp", true)
		@last_x = 0
		@last_y = 0
		@x = @snake.last_x
		@y = @snake.last_y
	end
	
	def update
		@last_x = @x
		@last_y = @y
		@x = @snake.last_x
		@y = @snake.last_y
	end
	
	def draw
		@icon.draw(@x, @y, 1)
	end
	
end