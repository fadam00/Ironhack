class Blog


	def initialize
		@post_array = []
	end


	def posts
		@post_array
	end

	def latest_posts
		 @post_array.sort {|a,b| b.date <=> a.date}

		# latest.each do |post|
			# 	# post.print	

			# 	puts "This is: #{post.title}, created at #{post.date}, saying: #{post.text}"			
			# end

	end



	def add_post(post)
		@post_array.push(post)
	end


end
