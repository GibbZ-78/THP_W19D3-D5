# shoes.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative './item.rb'

# Shoes - Sub-class of Item 
# (>--~={ INHERITANCE }=~--<)
class Shoes < Item

  attr_accessor :size
  @@unique_shoes_counter = 0
  
  def initialize(shoes_id, shoes_name, shoes_brand = "GibbZ", shoes_unit_price = 0.0, shoes_quantity = 1, shoes_size)
    super(shoes_id, shoes_name, shoes_brand, shoes_unit_price, shoes_quantity)
    @size = shoes_size
    @@unique_shoes_counter += 1
  end

  # Display all shoes information 
  # (>--~={ POLYMORPHISM }=~--<)
  def disp_info_long
    Show.displn("  > Item ID: #{@id} - Name: #{@name} - Brand : #{@brand} - Size: #{@size} - Price: #{@unit_price}€ - Quantity: #{self.humanize_quantity}")
  end

  # Serializes (i.e. flatten and stringify complex object type) all shoes information to be written into CSV file 
  # (>--~={ POLYMORPHISM }=~--<)
  def serialize
    return "#{@id}|#{@name}|#{@brand}|#{@unit_price}|#{@quantity}|#{@size}"
  end

end

# shoes.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
