class ContactsController < ApplicationController

	def create
		@contact = Contact.new(params[:contact]) if params[:contact]
		if @contact.save
	        Email.send_email(@contact).deliver
	        redirect_to root_path, notice: 'OK'
	    else
	        redirect_to root_path, notice: 'ERROR'
	    end
	end

end
