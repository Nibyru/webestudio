class CreateContents < ActiveRecord::Migration
  def change
	  create_table :contents do |t|
	    t.string	:person_message
	  	 t.string	:photo
	    t.string	:person_info
	    t.text		:about_us
	    t.text		:us_message
	    t.string	:direction
	    t.string	:telephone
	    t.string	:email
	    t.string	:facebook
	    t.string	:twitter
	    t.string	:linkedin
	  end
  end
end
