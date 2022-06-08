# item.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
# Nothing crazy here so far...

# Item - Class instantiating an Item with its properties
class Item

  attr_accessor :id, :descr, :brand, :price, :quantity
  @@unique_item_counter = 0
  
  def initialize(my_id, my_descr, my_brand = "GibbZ", my_price = 0, my_quantity = 0)
    @id = my_id
    @descr = my_descr
    @brand = my_brand
    @price = my_price
    @quantity = my_quantity
    @@unique_item_counter += 1
  end

end

# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
