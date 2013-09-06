class AddPhotoColumnsToContents < ActiveRecord::Migration
  def self.up
    add_attachment :contents, :photo
  end

  def self.down
    remove_attachment :contents, :photo
  end
end
