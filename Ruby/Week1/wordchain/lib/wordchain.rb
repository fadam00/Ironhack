require 'ruby-dictionary'

dictionary = Dictionary.from_file("/usr/share/dict/words")

class WordChain
	attr_accessor :start_array, :end_array
    def initialize(dictionary)
        @dictionary = dictionary
    end  

	def find_chain
 	
 	#puts "Enter starting word"
 	@start_word = "cat"
    @start_array = @start_word.split(//)
    @start_emergency = ''

	#puts "Enter ending word"	
	@end_word = "dog"
    @end_array = @end_word.split(//)

  	puts @start_array.join 


  	i = 0

 	until @start_array == @end_array 
	
 		@start_emergency = @start_array[i]

 	if  @start_array[i] != @end_array[i] 
 		@start_array[i] = @end_array[i]

 		if i > @start_word.length
		i = 0
		end
				
		if 	@dictionary.exists?(@start_array.join) == true 
			puts @start_array.join
			i += 1

		else
			@start_array[i] = @start_emergency
			i += 1
			# @start_array[i] = end_array[i]
		end
		
		# elsif @dictionary.exists?(@start_array.join) == false
		# @start_array[0] = @start_array[0]
		# @start_array[1] = @end_array[1]

		# puts @start_array.join 

		# 	if  @dictionary.exists?(@start_array.join) == true 
		# 	@start_array[2] = @end_array[2]

		# 	end
		# end
	end

	#puts @start_array.join
    end
end
end

my_chain = WordChain.new(dictionary)   

my_chain.find_chain



