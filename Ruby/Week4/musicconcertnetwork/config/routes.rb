Rails.application.routes.draw do
 	
 	#Homepage is index showing all concerts created	
 	get "/", to: "concerts#index", as: :index

 	resources :concerts do
 		resources :comments
 	end

 	#Sends you to creation form
 	# get "/concerts/new", to: "concerts#new", as: :new
 	# post "/concerts", to: "concerts#create"
 	# get "/concerts/:id", to: "concerts#show" 

 end
