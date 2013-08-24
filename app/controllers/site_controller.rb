class SiteController < ApplicationController
	before_filter :authenticate_admin!, only: :admin

	def index
	end

	def create
		puts "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		@link = Link.create(params[:link]) if params[:link]
		@link.save
	end

	def admin
		@link  = Link.new
		@links = Link.all
	end
end
