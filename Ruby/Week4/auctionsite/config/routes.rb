Rails.application.routes.draw do
	get '/', to: "site#home"

	get "/users/new", to: "users#new"
	get "/users/:id", to: "users#show"
	post "/users", to: "users#create"


end
