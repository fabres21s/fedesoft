class UsersController < ApplicationController

  def index
	@users = User.all
	render json: @users, status: :ok
  end
  
  def create
		@user = User.create(params.permit(:name, :tel, :mail))
		render json: @user, status: :ok
	end
	
	def show
		@user = User.find(params[:id])
		render json: @user, status: :ok
	end
end
