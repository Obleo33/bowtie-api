Rails.application.routes.draw do 
	namespace :api do 
		namespace :v1 do 
			resources :users, only: [:index, :show, :create, :destroy, :update] 
			resources :projects, only: [:index, :show, :create, :destroy, :update] 
			resources :todos, only: [:index, :show, :create, :destroy, :update] 
		end 
	end 
end
