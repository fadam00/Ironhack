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

	def edit
		#Input
		# - params[:project_id]
		# - params[:id]
		#Output
		# - The edit form
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find(params[:id])
	end

	def update
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])

		@time_entry.update(
			hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date]
			)

		if time_entry.update(time_entry_params)
		redirect_to "/projects/#{@project.id}/time_entries"
	else
		redirect_to "/projects/#{project.id}/time_entries/#{time_entry.id}"
	end
end
#Any method that is not an action(not handling a request) should be private
private

	def time_entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date)
	end

end
