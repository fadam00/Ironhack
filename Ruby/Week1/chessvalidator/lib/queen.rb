class Queen
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x, final_y)
		if ((@x - final_x).abs) == ((@y - final_y).abs) || (final_x == @x || final_y == @y) then
			"yes"
		else
			"no"
		end
	end
end
