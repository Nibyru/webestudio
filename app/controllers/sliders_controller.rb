class SlidersController < ApplicationController

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
