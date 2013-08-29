class ContentsController < ApplicationController

	def update
		@content = Content.last
		@content.update_attributes(params[:content])
		redirect_to admin_path
	end

	def create
		@content = Content.create(params[:content]) if params[:content]
		redirect_to admin_path
	end

	def destroy
		@content = Content.find(params[:id])
		@content.destroy
		redirect_to admin_path
	end
end
