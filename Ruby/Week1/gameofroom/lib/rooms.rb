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


end

class Room_South < Rooms
	end

class Room_West < Rooms
end

class Room_East < Rooms
	end

class Room_Secret < Rooms
end