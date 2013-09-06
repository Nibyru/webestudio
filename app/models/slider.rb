class Slider < ActiveRecord::Base
  attr_accessible :title, :header, :photo
  
  validates :title, :photo, presence: true

  has_attached_file :photo, styles: { slider: "1900x650>" }
end
