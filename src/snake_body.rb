#snake_body.rb

class SnakeBody
	attr_reader :last_x, :last_y, :x, :y
	
	def initialize(window, snake, head_snake)
		@window = window
		@snake = snake
		@head_snake = head_snake
		@icon = Gosu::Image.new(@window, "img/snake.bmp", true)
		@last_x = 0
		@last_y = 0
		@x = @snake.last_x
		@y = @snake.last_y
	end
	
	def update
	puts $alive
		@last_x = @x
		@last_y = @y
		if (@head_snake.x == @x && @head_snake.y == @y) then
			$alive = false
			puts $alive
		end
		@x = @snake.last_x
		@y = @snake.last_y
	end
	
	def draw
		@icon.draw(@x, @y, 1)
	end
	
end