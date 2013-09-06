class RemovePhotoColumnsToLinks < ActiveRecord::Migration
  def change
  	remove_column :links, :photo
  end
end
