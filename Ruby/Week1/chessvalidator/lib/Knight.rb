class Knight
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x,final_y)
		if ((final_x - @x).abs == 2) && ((final_y - @y).abs == 1) then
			"yes"
		elsif ((final_x - @x).abs == 1) && ((final_y - @y).abs == 2) 
			"yes"
		else
			"no"
		end
	end
end

