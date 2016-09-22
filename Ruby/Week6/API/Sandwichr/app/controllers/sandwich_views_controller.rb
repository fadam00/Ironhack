class SandwichViewsController < ApplicationController
	def home
		@sandwiches = Sandwich.all
		render :home
	end

	def index
	@sandwiches = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@ingredients = Ingredient.all
	end

end
