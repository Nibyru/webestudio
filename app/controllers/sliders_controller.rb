class SlidersController < ApplicationController

	def update
		@slider = Slider.last
		@slider.update_attributes(params[:slider])
		redirect_to admin_path
	end

	def create
		@slider = Slider.create(params[:slider]) if params[:slider]
		redirect_to admin_path
	end

	def destroy
		@slider = Slider.find(params[:id])
		@slider.destroy
		redirect_to admin_path
	end
end
