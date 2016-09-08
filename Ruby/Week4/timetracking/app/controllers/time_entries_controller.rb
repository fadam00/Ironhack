class TimeEntriesController < ApplicationController

	def index
		#Input
		# - project id under params[:id]
		#Output
		# - all entries for the project

		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries.where(date: Time.now.beginning_of_day..Time.now.end_of_day)

	end
end
