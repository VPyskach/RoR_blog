class PhotosController < ApplicationController
	before_action :authenticate_user!

	def index
		@photos = Photo.all	
	end

	def new
		@photo = Photo.new
	end

	def create
		params[:photo][:category_id]=params[:category_id]
		params[:photo][:user_id]=current_user.id
		pp @photo=Photo.create(photo_params)
		redirect_to photos_path
	end

	def update
		@photo.update(photo_params)
  		redirect_to photos_path
	end

	def destroy
		@photo.destroy
  		redirect_to photos_path
	end

private

	def photo_params
		params.require(:photo).permit(:user_id, :name, :category_id, :photo)
	end

	def photo_set
 		@photo = Photo.find(params[:id])
  		
  	end
end
