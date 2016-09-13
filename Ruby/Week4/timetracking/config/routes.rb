Rails.application.routes.draw do

	get '/' , to: 'site#home', as: :home
	# get ("/", {to: "site#home"}) <---Hash
	get '/contact', to: 'site#contact', as: :contact

	get '/say_name/:name', to: 'site#say_name', as: :name

	resources :projects, only: [:index, :show, :new, :create] do

		resources :time_entries, except: [:show]
	end


	
end

