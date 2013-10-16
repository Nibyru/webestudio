class Email < ActionMailer::Base
  default from: 'contacto@cycestudiocontable.com'

  def send_email(contact)
    @user = contact
    mail( to: contact.email, subject: 'Gracias por comunicarse' )
  end

  def send_admin_email(contact)
    @user = contact
    mail( to: 'contacto@cycestudiocontable.com', subject: 'Nuevo contacto recibido' )
  end
end
