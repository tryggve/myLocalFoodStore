# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

milk = SupplierCategory.create({name: 'Milk'})
meat = SupplierCategory.create({name: 'Meat'})
bread = SupplierCategory.create({name: 'Bread'})

suppliers = Supplier.create([{name: 'Daisys Dairy', supplier_category: milk}, 
														 {name: 'Marlons Meat', supplier_category: meat}, 
														 {name: 'Brads Bread', supplier_category: bread}])
