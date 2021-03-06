class ConcertsController < ApplicationController

	def index
		@concert = Concert.where(date: Time.now .. Time.now.end_of_day)
		@concerts_month = Concert.where(date: Time.now .. Time.now.end_of_month)
	end

	def new
		
		@concert = Concert.new
	end

	def show

		@concert = Concert.find(params[:id])
		@new_comments = @concert.comments
		@comment = @concert.comments.new
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description],
			)

			if @concert.save
				redirect_to "/"
			else
				render "new"
			end
	end
end
