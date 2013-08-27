class AddPhotoToLinks < ActiveRecord::Migration
  def change
    add_column :links, :photo, :string
  end
end
