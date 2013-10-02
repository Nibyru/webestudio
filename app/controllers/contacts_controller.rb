class ContactsController < ApplicationController

	def create
		@contact = Contact.new(params[:contact]) if params[:contact]
		if @contact.save
	        Email.send_email(@contact).deliver
	        Email.send_admin_email(@contact).deliver
	        redirect_to root_path, notice: 'Se envio correctamente la información de contacto...'
	    else
	        redirect_to root_path, notice: 'ERROR al enviar la información de contacto'
	    end
	end

end
