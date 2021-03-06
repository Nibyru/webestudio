class ServicesController < ApplicationController

	def update
		@service = Service.find(params[:id])
		@service.update_attributes(params[:service])
		redirect_to admin_path
	end

	def create
		@service = Service.create(params[:service]) if params[:service]
		redirect_to admin_path
	end

	def destroy
		@service = Service.find(params[:id])
		@service.destroy
		redirect_to admin_path
	end
end
