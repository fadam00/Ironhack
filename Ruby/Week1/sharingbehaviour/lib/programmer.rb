class Programmer

include Caffeine_Consumer
include Payable
	# attr_reader :name
	# def initialize (name)
	# 	@name = name
	# end

	def program
		consume_more_coffee
		do_wonderful_things_with_computers
		pay_people
	end

	def do_wonderful_things_with_computers

		puts ""

		puts "Gimme 10 seconds"

			10.downto(1) do |x|
				print x, "..."
			end

		puts "Done! Enjoy your program."

		puts ""



		end


end
