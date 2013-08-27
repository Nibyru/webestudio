class Service < ActiveRecord::Base
  attr_accessible :symbol, :title, :header, :body
  
  validates :symbol, :title, :header, presence: true

end
