class Email < ActionMailer::Base
  default from: 'contacto@cycestudiocontable.com'

  def send_email(contact)
    mail( to: contact.email, subject: 'Thanks for signing up' )
  end
end
