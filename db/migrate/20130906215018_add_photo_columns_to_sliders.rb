class AddPhotoColumnsToSliders < ActiveRecord::Migration
  def self.up
    add_attachment :sliders, :photo
  end

  def self.down
    remove_attachment :sliders, :photo
  end
end
