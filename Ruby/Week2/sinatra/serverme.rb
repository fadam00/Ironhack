require "sinatra/reloader" if development?
require "sinatra"
require "artii"

get "/" do
	erb :home
	end

get "/company" do
	erb :company
	end
get "/about" do
	# Refers to views/about.erb
	erb :about
end

users = [
	{:username => "starwars", :name => "Star Wars", :bio => "In a galaxy far far away", :avatar => "/chukkachukka.jpg"}
]

get "/users/:username" do
	
	@user_name_string = params[:username]

	@the_user = users.find {|the_user|
		the_user[:username] == @user_name_string}

	if @the_user == nil
		erb :no_user
	else
		erb :user_profile
	end
end
