class StringCalculator

	def add(string)
		@string_to_int = string.gsub(/\$/, ",")
		@string_to_int1 = @string_to_int.split()

		#@string_to_int[0].to_i + @string_to_int[1].to_i
		sum = 0
		@string_to_int1.each do |x|
			x.to_i
			sum += x
			end



	end
end



