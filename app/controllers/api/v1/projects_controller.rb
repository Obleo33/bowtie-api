class Api::V1::ProjectsController < Api::V1::BaseController 
	def index 
		respond_with Project.all 
	end

	def show 
		project = Project.find(params[:id])
		respond_with project
	end  

	def create
		respond_with :api, :v1, Project.create(project_params) 
	end 

	def destroy 
		respond_with Project.destroy(params[:id]) 
	end 

	def update 
		project = Project.find(params["id"]) 
		project.update_attributes(project_params) 
		respond_with project, json: project 
	end 

	private 

	def project_params 
		params.require(:project).permit(:id, :name, :email, :password)
	end 
end