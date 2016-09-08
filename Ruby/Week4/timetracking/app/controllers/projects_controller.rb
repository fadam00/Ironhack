class ProjectsController < ApplicationController

	def index

		@projects = Project.order(created_at: :asc).limit(10)

		render 'index'
	end

	def show
		#Display a single project from an id
		#With find, if it doesnt find the id it'll give an exception

		@project = Project.find_by(id: params[:id])

		unless @project

			render 'no_projects_found'
		end
	end
end
