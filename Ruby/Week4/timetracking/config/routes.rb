Rails.application.routes.draw do

	get '/' , to: 'site#home', as: :home
	# get ("/", {to: "site#home"}) <---Hash
	get '/contact', to: 'site#contact', as: :contact

	get '/say_name/:name', to: 'site#say_name', as: :name

	get '/projects', to: 'projects#index', as: :projects

	get '/projects/new', to: 'projects#new'

	get '/projects/:id', to: 'projects#show'

	post '/projects' , to: "projects#create"

	get '/projects/:project_id/time_entries', to: 'time_entries#index'
	get '/projects/:project_id/time_entries/new', to: 'time_entries#new'

	post '/projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries

	get "/projects/:project_id/time_entries/:id/edit", to: "time_entries#edit"

	patch "/projects/:project_id/time_entries/:id", to: "time_entries#update", as: :project_time_entry
end

