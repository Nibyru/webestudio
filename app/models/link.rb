class Link < ActiveRecord::Base
  attr_accessible :name, :description, :url, :photo
  
  validates :name, :url, presence: true

  has_attached_file :photo, styles: { slider: "370x241>" }
end
