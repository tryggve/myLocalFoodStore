class Supplier < ActiveRecord::Base
  attr_accessible :name, :supplier_category, :supplier_category_id
	belongs_to :supplier_category
end
