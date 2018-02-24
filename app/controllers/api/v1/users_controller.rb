class Api::V1::UsersController < Api::V1::BaseController 
	def index 
		respond_with User.all 
	end

	def show 
		user = User.find(params[:id])
		respond_with user
	end  

	def create
		# @user.user_create(user_params)
		user_obj = User.new(user_params)
		respond_with :api, :v1, user_obj.create_user
		# respond_with :api, :v1, User.create(user_params) 
	end 

	# def create
	#  	@user.user_create(user_params)
	# 	byebug
	# end

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
