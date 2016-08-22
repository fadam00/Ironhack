class Lobby 
	def lobby_beginning
		puts"You wake up with a sore head and a sore butt. You see 5 doors before you, and also that your right sock is missing..."
		puts "You could just turn around, and exit out of this creepy dungeon, but the drive to find your missing sock gets the best of you"
		puts " and you decide to look for it instead of going real quick to Walmart and buying a new pair..."
		puts "Where would you want to go?"
		puts "[N] [S] [W] [E]. Choose wisely."

		user_input = gets.chomp.upcase

		if user_input === "N"
			puts "You've made a mistake buddy"
		end

		room_chooser
	end

	def location_lobby
		puts "You're in the lobby right now. Where will you go?"
		puts "[N] [S] [W] [E]. Choose wisely."

		if user_input === "N" 
			puts "You've made a mistake buddy"
		end
	end
end
