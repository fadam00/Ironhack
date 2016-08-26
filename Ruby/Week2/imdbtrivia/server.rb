require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/" do
	erb :home
end


post "/search_results" do
  the_search = Imdb::Search.new(params[:word])

  @movies = the_search.movies.first(30)
  @movies.delete_if{|movie| movie.poster == nil}
  @movies_with_posters = @movies.first(9)


  erb :search_results
end
