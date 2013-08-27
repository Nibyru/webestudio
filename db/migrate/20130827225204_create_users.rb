class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string	:name
      t.string	:job
      t.string	:twitter
      t.string	:facebook
      t.string	:photo

      t.timestamps
    end
  end
end
