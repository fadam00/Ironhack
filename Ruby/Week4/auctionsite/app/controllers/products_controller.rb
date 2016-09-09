class ProductsController < ApplicationController

	def index
	end

	def show
	end

	def create
	end

	def destroy
	end

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	
end
