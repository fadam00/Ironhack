class Rooms
	attr_reader :name, :description, :exit
	
	def initialize(name, description, exit)
	    @name = name
	    @description = description
	    @exit = exit
  	end


end

	def room_chooser

  		puts "Hello!!!"

  	end


class Room_North < Rooms

	def in_roomN
		puts "..."
		puts "..."
		puts "You've entered a room north of you. You didn't like it."
		puts "What do you wanna do?"
		x = gets.chomp

		if x === "exit" then
			puts "Well, then..."
			exti_room
	end


end

#SINCE ROOMS BEHAVE THE SAME, CONSIDER DUCK TYPES OR JUST MAKING AN OBJECT FOR EACH
#ROOM WITH DIFFERENT DESCRIPTION FROM THE ROOM CLASS.
class Room_South < Rooms
	end

class Room_West < Rooms
end

class Room_East < Rooms
	end

class Room_Secret < Rooms
end