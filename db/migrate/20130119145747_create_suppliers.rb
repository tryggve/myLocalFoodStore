class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
    	t.references :supplier_category

    	t.string :name
    	#t.string :contact_person
    	
    	#t.string :street_address
    	#t.string :postal_code
    	#t.string :city

    	#t.string :telephone_number
    	#t.string :email_address
    	#t.string :webpage_address

    	#t.string :latitude
    	#t.string :longitude

    	#t.text :desctiption

      t.timestamps
    end
  end
end
