class Slider < ActiveRecord::Base
  attr_accessible :title, :header, :photo, :photo_file_name, :photo_content_type, :photo_file_size
  
  validates :title, presence: true

  has_attached_file :photo, styles: { slider: "1900x650" }
end
