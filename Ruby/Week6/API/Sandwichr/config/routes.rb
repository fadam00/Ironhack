Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
resources :sandwiches, only: [:home, :index, :show], controller: "sandwich_views"

  scope "/api" do
  	resources :sandwiches
  	resources :ingredients
  	post "/sandwiches/:id/ingredients/add" => "sandwiches#add"
  end

  get "/", to: "sandwich_views#home"
  
end
