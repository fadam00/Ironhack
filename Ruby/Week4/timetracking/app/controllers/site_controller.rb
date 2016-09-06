class SiteController < ApplicationController
	#
	#----------------------------------|
	#								   | 
	def home
		render 'home' # --------->app/views/site/home.html.erb
		#render (:home)
	end

	def contact
		render 'contact'
	end
end
