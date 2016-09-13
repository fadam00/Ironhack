Rails.application.routes.draw do
	get '/', to: "sites#home"

	get "/users", to: "users#index"
	get "/users/new", to: "users#new"
	get "/users/:id", to: "users#show"
	post "/users", to: "users#create"

	get "/products", to: "products#index"

end
