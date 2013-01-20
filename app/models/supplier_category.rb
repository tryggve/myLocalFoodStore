class SupplierCategory < ActiveRecord::Base
  attr_accessible :name
	has_many :suppliers
end
