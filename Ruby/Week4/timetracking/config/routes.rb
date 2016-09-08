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
end
