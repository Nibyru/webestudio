class RemovePhotoColumnsToContents < ActiveRecord::Migration
  def change
  	remove_column :contents, :photo
  end
end
