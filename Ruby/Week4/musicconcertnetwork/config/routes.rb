Rails.application.routes.draw do
 	
 	#Homepage is index showing all concerts created	
 	get "/", to: "concerts#index"

 	#Sends you to creation form
 	get "/concerts/new", to: "concerts#new"
 	post "/concerts", to: "concerts#create"

 	get "concert/"

 end
