class King
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x, final_y)
		if (final_x - @x < 2.abs)|| (final_y - @y < 2.abs)
			"yes"
		else
			"no"

	end
end

black_king(8,4, "black")
white_king(1,4, "white")
