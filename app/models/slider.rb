class Slider < ActiveRecord::Base
  attr_accessible :title, :header, :photo
  
  validates :title, :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
