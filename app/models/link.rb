class Link < ActiveRecord::Base
  attr_accessible :name, :description, :url, :photo
  
  validates :name, :url, presence: true

  mount_uploader :photo, PhotoUploader
end
