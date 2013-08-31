class CreateSliders < ActiveRecord::Migration
	def change
	  create_table :sliders do |t|
	    t.string	:title
	    t.string	:header
       t.string	:photo

	    t.timestamps
	  end
	end
end
