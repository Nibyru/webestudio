class User < ActiveRecord::Base
  attr_accessible :name, :job, :twitter, :facebook, :photo
  
  validates :name, :job, presence: true

  has_attached_file :photo, styles: { avatar: "270x203>" }, storage: :dropbox
end
