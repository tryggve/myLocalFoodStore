class CreateSupplierCategories < ActiveRecord::Migration
  def change
    create_table :supplier_categories do |t|

    	t.string :name

      t.timestamps
    end
  end
end
