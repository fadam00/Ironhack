class UsersController < ApplicationController

	def show
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(name: params[:user][:name],
						email: params[:user][:email]
						)
		user.save

		redirect_to "/users/#{user.id}"

	end

	def destroy

	end
	
end
