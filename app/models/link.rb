class Link < ActiveRecord::Base
  attr_accessible :name, :description, :url
  
  validates :name, :url, presence: true
end
