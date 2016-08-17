require("imdb")


	text = IO.readlines("movies.txt")
	movies = []
	grid = ""
	# 	text.each do |x|
	# 	the_search = Imdb::Search.new(x)


	# 	first_result = the_search.movies[0]
	# 	a = first_result.title
	# 	b =first_result.rating.to_i

	# 	moviehash = {:name => a, :rating => b}
	# 	movie.push (moviehash)

	# 	end

	text.each do |x|
		the_search = Imdb::Search.new(x)


		first_result = the_search.movies[0]
		a = first_result.title
		b =first_result.rating

		moviehash = {:name => a, :rating => b}
		movies.push (moviehash)
		end

10.downto(1).each do |rating|

	movies.each do |movie|
		
		 if movie[:rating] >= rating then
		 	grid += "#"
		 	
		 else 
		 	grid += "_"
		 	
		 end
	end
	grid += "\n"
end

puts grid







