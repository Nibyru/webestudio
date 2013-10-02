class Contact < ActiveRecord::Base
  attr_accessible :name, :company, :telephone, :email, :content

  validates :name, :telephone, :email, :content, presence: true

end
