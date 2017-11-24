class PhotosController < ApplicationController

	def index
		@photos = Photo.all	
	end

	def new
		@photo = Photo.new
	end

	def create
		
	end

	def update
		
	end

	def destroy
		
	end

private

	def photo_params
		
	end

end
