class LinksController < ApplicationController

	def update
		@link = Link.last
		@link.update_attributes(params[:link])
		redirect_to admin_path
	end

	def create
		@link = Link.create(params[:link]) if params[:link]
		redirect_to admin_path
	end

	def destroy
		@link = Link.find(params[:id])
		@link.destroy
		redirect_to admin_path
	end
end
