#Exercise Car Car

class Car
	def initialize(name,sound,price)
		@name = name
		@sound = sound
		@price = price
		@array_cities = []
	end

	def car_sound
		puts "When you start #{@name} it sounds like #{@sound}"
	end

	def add_cities_visited (city)
		@array_cities.push(city)
	end

	def cities_visited
		p @array_cities
	end



end

my_car = Car.new("Ferrari", "NNNNYYYYYUUUUUUMMMM!!!", 100000)
other_car = Car.new("Toyota","-putter--putter-vroom vroom", 14000)

my_car.add_cities_visited("New York")
my_car.add_cities_visited("Philadelphia")
other_car.add_cities_visited("Portland")
other_car.add_cities_visited("Miami")




my_car.car_sound
my_car.cities_visited
other_car.car_sound
other_car.cities_visited

