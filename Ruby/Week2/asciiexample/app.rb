require "sinatra"
require "artii"

get "/ascii/:art" do
	the_ascifier = Artii::Base.new(:font => "doh") 
	@ascii_string = params[:art]
	@output = the_ascifier.asciify(@ascii_string) 

	erb :index
end

