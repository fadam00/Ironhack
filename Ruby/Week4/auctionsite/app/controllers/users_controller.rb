class UsersController < ApplicationController
	def index

		@user = User.all

	end
	
	def show
		@user = User.find(params[:id])

		# unless @user

		# 	render 'no_users_found'
		# end
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(name: params[:user][:name],
						email: params[:user][:email]
						)
		user.save

		redirect_to "/users"

	end

	def destroy

	end



	
end
