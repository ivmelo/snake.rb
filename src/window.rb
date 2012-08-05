#window.rb

class Window < Gosu::Window

	def initialize
		super(570, 330, false)
		self.caption = "Snake.rb"
		@snake = Snake.new(self)
		@power_up = PowerUp.new(self, @snake)
		@snake_body = [SnakeBody.new(self, @snake)]
		@update_counter = 0
		@speed = 10
	end
	
	def update
		if (@update_counter < @speed) then
			@update_counter = @update_counter + 1
		else
			@snake.update
			if (@power_up.update) then
				@snake_body << SnakeBody.new(self, @snake_body[@snake_body.length-1])
			end
			for i in 0..@snake_body.length-1 do
				@snake_body[i].update
			end
			@update_counter = 0
		end
	end
	
	def draw
		@snake.draw
		@power_up.draw
		for i in 0..@snake_body.length-1 do
			@snake_body[i].draw
		end
	end
	
	def button_down(id)
		@snake.button_down(id)
		if (id==Gosu::KbEscape) then
			close
		end
	end
end