class Api::V1::UsersController < Api::V1::BaseController 
	def index 
		respond_with User.all 
	end

	def show 
		user = User.find(params[:user][:email])
		user.valid_password?(params[:user][:password])
		respond_with user
	end  

	def create
		user_obj = User.new(user_params)
		respond_with :api, :v1, user_obj.create_user
	end 

	def destroy 
		respond_with User.destroy(params[:id]) 
	end 

	def update 
		user = User.find(params["id"]) 
		user.update_attributes(user_params) 
		respond_with user, json: user 
	end 

	private 

	def user_params 
		params.require(:user).permit(:id, :name, :email, :password_hash)
	end 
end
