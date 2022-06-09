# shoes.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative './item.rb'

# Shoes - Sub-class of Item
class Shoes < Item

  attr_accessor super, :size #:id, :name, :brand, :unit_price, :quantity
  @@unique_item_counter = 0
  
  def initialize(my_id, my_name, my_brand = "GibbZ", my_unit_price = 0, my_quantity = 0, my_size)
    @id = my_id
    @name = my_name
    @brand = my_brand
    @unit_price = my_unit_price
    @quantity = my_quantity
    @size = my_size
    @@unique_item_counter += 1
  end

end

# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
