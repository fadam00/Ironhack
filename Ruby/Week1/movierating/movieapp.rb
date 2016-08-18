require("imdb")


    text = IO.readlines("movies.txt")
    movies = []
    grid = ""
    #     text.each do |x|
    #     the_search = Imdb::Search.new(x)


    #     first_result = the_search.movies[0]
    #     a = first_result.title
    #     b =first_result.rating.to_i

    #     moviehash = {:name => a, :rating => b}
    #     movie.push (moviehash)

    #     end

    list = ""
    numb = 1
    text.each do |x|
        the_search = Imdb::Search.new(x)


        first_result = the_search.movies[0]
        a = first_result.title
        b =first_result.rating

        list += "#{numb}. #{first_result.title} \n"
        numb += 1
        
        moviehash = {:name => a, :rating => b}
        movies.push (moviehash)
        end

puts "      Ratings"
l = 1
10.downto(1).each do |rating|
    movies.each do |movie|
        
         if movie[:rating] >= rating then
             grid += "|#|"

         else 
             grid += "| |"
             
         end
    end
    grid += "\n"
end

puts grid 
puts " ____________________"
print " 1  2  3  4  5  6  7\n\n"

puts list




















