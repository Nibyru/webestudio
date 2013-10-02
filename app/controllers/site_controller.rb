class SiteController < ApplicationController
	before_filter :authenticate_admin!, only: :admin
	before_filter :instance_object, only: [:index, :admin]

	def index
	end

	def services
		@services = Service.all
	end

private

	def instance_object
		@link     = Link.new
		@user     = User.new
		@service  = Service.new
		@slider   = Slider.first || Slider.new
		@new_content  = Content.new
	end
end
