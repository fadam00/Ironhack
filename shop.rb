require 'date'

class ShoppingCart
	def initialize
		@items = []
	end
	def add_item(add_item)
		@items.push(add_item)
	end
	def checkout
		price = 0
		@items.each do |item|
			if @items.count < 5 
				price += (0.90* item.price)
			else
			price += item.price
		end
		end
	price
	end
end

class Item
	def initialize(name,price)
		@name = name
		@price = price
	end
	def price
		@price
	end
end

class Houseware < Item
	def price
		h_price = @price
			if h_price < 100
				h_price
			else h_price > 100
				h_price = h_price - ((0.05)*(h_price)) 
			end
		h_price
	end
end

class Fruit < Item
	def price
		f_price = @price
			if Date.today.saturday? == TRUE || Date.today.sunday? == TRUE
				f_price = ((0.10)*f_price) - f_price
			else
				f_price = @price
			end
		f_price
	end
end

class Misc < Item
	def price
		@price
	end
end



banana = Fruit.new("Banana",10)
orange_juice=Fruit.new("Orange Juice",10)
rice=Misc.new("Rice",1)
vacuum_cleaner=Houseware.new("Vacuum Cleaner", 150)
anchovies=Misc.new("Anchovies",2)

my_cart = ShoppingCart.new

my_cart.add_item(vacuum_cleaner)
my_cart.add_item(orange_juice)
my_cart.add_item(rice)
my_cart.add_item(anchovies)

my_cart.checkout








