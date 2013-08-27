class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string	:symbol
      t.string	:title
      t.string	:header
      t.string	:body

      t.timestamps
    end
  end
end
