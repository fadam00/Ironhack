class Lexiconomitron

	def eat_t(string)

		string.downcase.delete("t")

	end

	def shazam(array)

		array.each do |str|
			str.reverse! #Didn't work without "!", look up function of "!"
		end
	end
end
