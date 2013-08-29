class ApplicationController < ActionController::Base
	before_filter :data_collector
  	protect_from_forgery
  	
private
	def data_collector
		@links    = Link.all
		@users    = User.all
		@services = Service.all
		@sliders  = Slider.all
		@content  = Content.last || Content.new
	end
end
