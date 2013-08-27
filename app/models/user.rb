class User < ActiveRecord::Base
  attr_accessible :name, :job, :twitter, :facebook, :photo
  
  validates :name, :job, presence: true

  mount_uploader :photo, PhotoUploader
end
