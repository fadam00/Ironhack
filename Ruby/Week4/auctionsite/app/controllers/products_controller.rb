class ProductsController < ApplicationController

	def index

		@products = Product.all

	end

	def show

		@products = Product.find(params[:user_id])

	end

	end

	def destroy
	end

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	
end
