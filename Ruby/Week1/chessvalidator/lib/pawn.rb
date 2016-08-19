class Pawn
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x,final_y)