class ImagesController < ApplicationController
    
    before_action :set_image, only: [:show, :edit, :update, :destroy]
    
    def new
        @image = Image.new
    end
    
    def index
        @images = Image.where user_id: current_user.id
    end
    
    def create
       @image = current_user.images.new images_params
        @image.save
        redirect_to '/'

    end
    
    def show
    end
    
    def set_image
        @image = Image.find params[:id]
    end
    
    def edit
    end
    
    def update
        @image.update images_params
        redirect_to @image
    end
    
    
    def destroy
        @image.destroy
        redirect_to @image
    end
    
    private 
    
    def images_params
        params.require(:image).permit :description, :picture
    end
end
