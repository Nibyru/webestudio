class RemovePhotoColumnsToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :photo
  end
end
