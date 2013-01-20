class Supplier < ActiveRecord::Base
  attr_accessible :name, :supplier_category
	belongs_to :supplier_category
end
