#power_up.rb

class PowerUp
	
	def initialize(window, snake)
		@window = window
		@snake = snake
		@icon = Gosu::Image.new(@window, "img/power_up.bmp", true)
		@x = rand(@window.width/30) * 30
		@y = rand(@window.height/30) * 30
	end
	
	def update
		if (@x == @snake.x && @y == @snake.y) then
			@x = rand(@window.width/30) * 30
			@y = rand(@window.height/30) * 30
			return true
		end
		return false
	end
	
	def draw
		@icon.draw(@x, @y, 2)
	end
	
end