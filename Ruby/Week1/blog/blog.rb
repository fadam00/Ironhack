#USED NIZAR'S INGREDIENT CLASS EXAMPLE FROM DAY 2 AS REFERENCE 

require_relative("lib/blog.rb")#Pulls files from different libraries much like HTML and CSS. 

class Blog
	def initialize (name)
		@name = name
		@post_array = []
	end



	def add_post(the_post)
		@post_array.push(the_post)
	end

	def	publish_front_page

		 @post_array.sort! { |a,b| a.date <=> b.date } #Sorts the dates

		@post_array.each do |item|
			if item.sponsored === true then
				puts ""
				puts ""
				puts "*******************SPONSORED
				#{item.title}SPONSOREDwritten on #{item.date}*****************"
				puts "===================================================="
				puts "#{item.text}"
			else
				puts ""
				puts ""
				puts "#{item.title} written on #{item.date}"
				puts "====================================="
				puts "#{item.text}"
			end
		end

	end

end

class Post
	attr_accessor(:title, :date, :text, :sponsored)
	def initialize (title,date,text,sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end

sandwich = Post.new("Peanut Butter Jelly Sandwich", "2014/8/12", "IT'S PEANUT BUTTER JELLY TIME! PEANUT BUTTER JELLY TIME! YEAAAA!!!", false)
cats = Post.new("Cats", "2010/3/23","Cats are clever creatures. Much so that they will make a sandwich and eat it in front of you!", true)
bicycle = Post.new("My Favorite Bicycle","2007/2/28","My favorite bicycle is Schwiin. Simply because it will hold my hefty weight without falling apart.", false)
iron = Post.new("Iron Work", "2016/3/12","Iron works so well on your muscles that once it's done with you. That's it...you're done.", true)
computer = Post.new("Commuter or Computer?", "2013/4/25","Commuting computer are the way of the future. We are the way of the future", false)
horses = Post.new("Horses","2012/5/26", "Horses are cool.")
#For proper sorting of dates as string format should be YYYY/MM/DD

frank_blog = Blog.new("Frank's Blog")

frank_blog.add_post(cats)
frank_blog.add_post(bicycle)
frank_blog.add_post(sandwich)
frank_blog.add_post(iron)
frank_blog.add_post(computer)
frank_blog.add_post(horses)


frank_blog.publish_front_page



