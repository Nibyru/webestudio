class RemovePhotoColumnsToSliders < ActiveRecord::Migration
  def change
  	remove_column :sliders, :photo
  end
end
