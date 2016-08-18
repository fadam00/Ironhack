class Designer

include Caffeine_Consumer
include Payable

	# attr_reader :name
	# def initialize (name)
	# 	@name = name
	# end

	def design_things
		consume_more_coffee
		design_things_now
		pay_people
	end

	def design_things_now

		puts "Choose one of the following tools for me to use:"

		puts "[S]cissors, [L]asagna, [C]omputer, [P]rinter"

		puts ""
		
			x = gets.chomp.upcase

			if x == "S" then

				puts "So you want me to use scissors? That's an odd choice, but all right!"

			elsif x == "L" 

				puts "I'll design it all once I'm done with this..."

			elsif x == "C" 

				puts "Let me get to work then"

			elsif x == "P"

				puts "SSSCCCCRREEEECCHHHH"
			end
		puts ""	

		puts "Done!!"

	end


end
