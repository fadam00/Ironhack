class TextInspectionsController < ApplicationController

	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]

		@text_array = @text.split(" ")

		@word_count = @text_array.length

		@time_to_read = @word_count / (275/60)

		@word_frequency = @text_array.group_by{|x| x}.sort_by{|k, v| -v.size}.map(&:first).first(10)
		render 'results'
	end
end
