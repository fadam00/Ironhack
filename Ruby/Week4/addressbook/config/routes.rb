Rails.application.routes.draw do

	get	"/", to: 'site#home'
	get "/new", to: 'contacts#new' 
	post "/contacts", to: 'contacts#create'

end
