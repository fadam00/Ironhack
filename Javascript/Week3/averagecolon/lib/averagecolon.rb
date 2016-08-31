def average (string) 
	string_array = string.split(":")

	sum = 0
		string_array.each do |x|
			sum += x.to_i

		end
		
	sum/string_array.length
end


p average("10:40:86")