# item.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
# Nothing crazy here so far...

# Item - Class instantiating an Item with its properties
class Item

  attr_accessor :id, :name, :brand, :unit_price, :quantity
  
  def initialize(my_id, my_name, my_brand = "GibbZ", my_unit_price = 0, my_quantity = 0)
    @id = my_id
    @name = my_name
    @brand = my_brand
    @unit_price = my_unit_price
    @quantity = my_quantity
  end

  def disp_info_short
    Show.displn("  > Item ID: #{@id} - Name: #{@name}")
  end

  def disp_info_long
    Show.displn("  > Item ID: #{@id} - Name: #{@name} - Brand : #{@brand} - Price: #{@unit_price}€ - Quantity: #{self.humanize_quantity}")
  end

  def serialize
    return "#{@id}|#{@name}|#{@brand}|#{@unit_price}|#{@quantity}"
  end

  private

  def humanize_quantity
    @quantity == 0 ? "Out of stock" : @quantity.to_s
  end

end

# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
