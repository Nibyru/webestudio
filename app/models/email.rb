class Email < ActionMailer::Base
  default from: 'contacto@cycestudiocontable.com.ar'

  def send_email(contact)
    @user = contact
    mail( to: contact.email, subject: 'Gracias por comunicarse' )
  end

  def send_admin_email(contact)
    @user = contact
    mail( to: 'contacto@cycestudiocontable.com.ar', subject: 'Nuevo contacto recibido' )
  end
end
