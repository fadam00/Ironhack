class CommentsController < ApplicationController

	def index

		@comments = Comment.find_by(concert_id: params[:id])	
	end

	def create
			@concert = Concert.find(params[:concert_id])
			@comment = @concert.comments.new(
			comment: params[:comment][:comment],
			name: params[:comment][:name],
			)
			@comment.save

			redirect_to "/concerts/#{@concert.id}"
	
	end

end
