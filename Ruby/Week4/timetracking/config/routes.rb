Rails.application.routes.draw do

	get '/' , to: 'site#home'
	# get ("/", {to: "site#home"}) <---Hash
	get '/contact', to: 'site#contact'
end
