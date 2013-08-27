class SiteController < ApplicationController
	before_filter :authenticate_admin!, only: :admin
	before_filter :data_collector, only: [:index, :admin]

	def index
	end

	def services
	end
	
	def admin
		@link  = Link.new
		@user  = User.new
	end

private
	def data_collector
		@links = Link.all
		@users = User.all
	end
end
