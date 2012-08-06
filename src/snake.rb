#snake.rb

class Snake
	attr_reader :last_x, :last_y, :x, :y
	
	def initialize(window)
		@window = window
		@icon = Gosu::Image.new(@window, "img/snake.bmp", true)
		@x = 0
		@y = 30
		@last_x = 0
		@last_y = 0
		@dir = :down
	end
	
	def update
		move
	end
	
	def draw
		@icon.draw(@x, @y, 1)
	end

	def move
		@last_x = @x
		@last_y = @y
		if (@dir == :right) then
			@x = @x + 30
			if (@x >= @window.width) then
				@x = 0
			end
		elsif (@dir == :left) then
			@x = @x - 30
			if (@x < 0) then
				@x = @window.width-30
			end
		elsif (@dir == :up) then
			@y = @y - 30
			if (@y < 0) then
				@y = @window.height-30
			end
		elsif (@dir == :down) then
			@y = @y + 30
			if (@y >= @window.height) then
				@y = 0
			end
		end
	end
	
	def button_down(id)
		if (@dir != :right && id == Gosu::KbLeft) then
			@dir = :left
		elsif (@dir != :left && id == Gosu::KbRight) then
			@dir = :right
		elsif (@dir != :down && id == Gosu::KbUp) then
			@dir = :up
		elsif (@dir != :up && id == Gosu::KbDown) then
			@dir = :down
		end
	end
end