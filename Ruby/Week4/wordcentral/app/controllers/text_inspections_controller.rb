class TextInspectionsController < ApplicationController

	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]

		@text_array = @text.split(" ")

		@word_count = @text_array.length

		@time_to_read = @word_count / (275/60)

		@word_frequency= @text.array.each_with_object(Hash.new(0)) {
			|words,counts| counts[words] += 1
		}
		render 'results'
	end
end
