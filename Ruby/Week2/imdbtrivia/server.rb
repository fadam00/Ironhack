require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/" do
	erb :home
end


post "/search_results" do
  the_search = Imdb::Search.new(params[:word])

  index = 0


  @movies = the_search.movies.first(30)#or you can use .sample to grab a single random item from the array.
  @movies.delete_if{|movie| movie.poster == nil}
  @movies_with_posters = @movies.first(9)

  def movie_question(response) do
    	if @response = movies_with_posters[0].year



  erb :search_results
end
