class SiteController < ApplicationController
	before_filter :authenticate_admin!, only: :admin
	before_filter :instance_object, only: [:index, :admin]
	layout 'admin', only: :admin

	def index
	end

	def services
		@services = Service.all
		@contact  = Contact.new
	end

private

	def instance_object
		@link         = Link.new
		@user         = User.new
		@service      = Service.new
		@slider       = Slider.first || Slider.new
		@contact      = Contact.new
		@new_content  = Content.new
	end
end
