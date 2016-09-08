class TimeEntriesController < ApplicationController

	def index
		#Input
		# - project id under params[:id]
		#Output
		# - all entries for the project

		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries

	end

	def new
		#Input
		# - params[:project_id]
		# 1.Find the project
		# 2.Instantiate new time entry for the project
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def create
		#Input 
		#-params[:project_id]
		#-params[:time_entry]
		#1. Find the project
		#2. Instantiate the new time entry with time_entry params
		#3. Save the time entry
		#4. Redirect back to projects
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new(
			minutes: params[:time_entry][:minutes],
			hours: params[:time_entry][:hours],
			date: params[:time_entry][:date]
			)
		@time_entry.save

		redirect_to "/projects/#{@project.id}/time_entries"
	end
end
