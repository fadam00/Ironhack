class Lexiconomitron

	def eat_t(string)
		#Alternative
		#text.tr("tT","")
		#text.gsub(/[tT]/,"")
		string.downcase.delete("t")

	end

	def shazam(array)
		#Alternative
		#reversed_words = words_array.map do |the_word|
			#eat_t(the_word.reverse)
			#end
		#[reversed_words.first, reversed_words.last]
		array.each do |str|
			str.reverse! #Didn't work without "!", look up function of "!"
		end

		string_flipped = eat_t(array.join(","))

		array_flipped = string_flipped.split(",")

  		new_array = []

  		new_array << array_flipped[0]
  		new_array << array_flipped[-1]

  		p new_array
 
	end

	def oompa_loompa(array)
		#Alternative
		#short_words = words_array.select do |the_word|
			#the_word.length <= 3
		#end

		#short_words_no_t = short_words.map do |the_word|
			#eat_t(the_word)
			#end
		#short_words_no_t
		new_array = []

		array.each do |x|

			if x.length <=  3 

				new_array << x

			end

		end
		new_array
	end

end
