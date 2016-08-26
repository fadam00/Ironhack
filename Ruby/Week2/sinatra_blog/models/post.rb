# require "Date"

class Post
	attr_accessor :title, :date ,:text# :id

	# @@current_id = 1

	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text

		# @id = @@current_id
		# @@current_id += 1
	end

	# def print
 #    puts @title
 #    puts ""
 #    puts @date
 #    puts "=" * 30
 #    puts ""
 #    puts @text
 #    puts ""
 #    puts "-" * 30
 #    puts "-" * 30
 #    puts ""
 #  end 

end


	