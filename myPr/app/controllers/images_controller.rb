class ImagesController < ApplicationController
  def show
	
  
  end

  def index
    @img = Image.where(user_id:params[:user_id])
    render_json(@img)

  end
end
