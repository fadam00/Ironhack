Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"

  scope "/api" do
  	resources :sandwiches
  	resources :ingredients
  	post "/sandwiches/:id/ingredients/add" => "sandwiches#add"
  end
  
end
