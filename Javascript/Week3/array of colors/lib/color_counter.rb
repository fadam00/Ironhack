color_array = ["lilac","indigo","teal","periwinkle","black","periwinkle","baby blue","teal"]


class ColorCounter
	def count_color(color, color_array)

		count = 0

		color_array.each do |temp_color|
			if temp_color == color #Going over the array to check if temp_color equals the color in the array.
				count+=1 #As the temp_color equals color in the array for a certain color, the count will increase by 1.
			end
		end
		count	
	end
end
