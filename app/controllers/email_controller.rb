class EmailController < ApplicationController
  layout :false

  before_filter :load_user

  def send_email;end

  def send_admin_email;end

private
  def load_user
    @user = Contact.last
  end
end
