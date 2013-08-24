class SiteController < ApplicationController
	before_filter :authenticate_admin!, only: :admin

	def index
		@links = Link.all
	end

	def admin
		@link  = Link.new
		@links = Link.all
	end
end
