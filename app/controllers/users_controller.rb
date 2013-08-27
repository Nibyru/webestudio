class UsersController < ApplicationController

	def create
		@user = User.create(params[:user]) if params[:user]
		redirect_to admin_path
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to admin_path
	end
end
