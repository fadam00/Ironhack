class CommentsController < ApplicationController

	def new

	@concert = Concert.find(params[:id])
	@comment = Concert.comment.new

	end

	def create
			@concert = Concert.comment.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			)

			if @concert.save
				redirect_to "/concerts/#{concert.id}"
			else
				render "new"
end
