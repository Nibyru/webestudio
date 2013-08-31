class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string	:symbol
      t.string	:title
      t.text	:header
      t.text	:body

      t.timestamps
    end
  end
end
