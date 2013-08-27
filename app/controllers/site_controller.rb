class SiteController < ApplicationController
	before_filter :authenticate_admin!, only: :admin
	before_filter :data_collector, only: [:index, :admin]
	before_filter :instance_object, only: [:index, :admin]

private
	def instance_object
		@link     = Link.new
		@user     = User.new
		@service  = Service.new
	end

	def data_collector
		@links    = Link.all
		@users    = User.all
		@services = Service.all
	end
end
