class AddPhotoColumnsToLinks < ActiveRecord::Migration
  def self.up
    add_attachment :links, :photo
  end

  def self.down
    remove_attachment :links, :photo
  end
end
