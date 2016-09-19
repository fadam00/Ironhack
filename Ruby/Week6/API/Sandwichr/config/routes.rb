Rails.application.routes.draw do
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]

  post "/sandwiches/:id/ingredients/add/:ingredient_id", to: "sandwiches#add", as: :add_ingredients
  
end
