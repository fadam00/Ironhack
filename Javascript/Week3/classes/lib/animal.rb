class Animals
	def initialize (name, sound)
		@name = name
		@sound = sound
	end

	def funnynoise
		puts "#{@name} makes this funny noise #{@sound}"
	end

	def shout
		puts @sound.upcase
	end

end
