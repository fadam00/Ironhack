class StringCalculator

	def add(string)
		@string_to_int = string.gsub(/\$/, ",")
		@string_to_int1 = @string_to_int.split()


#This works (except for bonus) ==>	#@string_to_int[0].to_i + @string_to_int[1].to_i

#The loop isn't working. Check again and also check instace variables.
		sum = 0
		@string_to_int1.each do |x|
			x.to_i
			sum += x
			end

	end
end



