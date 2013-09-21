class User < ActiveRecord::Base
  attr_accessible :name, :job, :twitter, :facebook, :photo, :photo_file_name, :photo_content_type, :photo_file_size
  
  validates :name, :job, presence: true

  has_attached_file :photo, styles: { avatar: "370x278>" }
end
