class Link < ActiveRecord::Base
  attr_accessible :name, :description, :url, :photo, :photo_file_name, :photo_content_type, :photo_file_size
  
  validates :name, :url, presence: true

  has_attached_file :photo, styles: { link: "370x241>" }
end
