#Exercise Car Car

class Car
	def initialize(name,sound)
		@name = name
		@sound = sound
	end

	def car_sound
		puts "When you start #{@name} it sounds like #{@sound}"
	end
end

my_car = Car.new("FastAF", "NNNNYYYYYUUUUUUMMMM!!!")
other_car = Car.new("Toyota","-putter--putter-vroom vroom")

my_car.car_sound
other_car.car_sound

