class Content < ActiveRecord::Base
  attr_accessible :person_message, :photo, :person_info, :about_us, :us_message,
  	:direction, :telephone, :email, :facebook, :twitter, :linkedin

  has_attached_file :photo, styles: { avatar: "270x203>" }
end
