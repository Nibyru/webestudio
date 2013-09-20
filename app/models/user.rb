class User < ActiveRecord::Base
  attr_accessible :name, :job, :twitter, :facebook, :photo
  
  validates :name, :job, presence: true

  has_attached_file :photo, styles: { avatar: "370x278>" }
end
