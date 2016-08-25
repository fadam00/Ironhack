require "sinatra"
require "artii"

the_ascifier = Artii::Base.new(:font => "alligator") 
@welcome = the_ascifier.asciify("Online Calculator") 

get "/" do
	erb :home
end

get "/add" do
	erb :add
end

post "/calculate_add" do
	num1=params[:first_number].to_f
	num2=params[:second_number].to_f
	result = num1 + num2

