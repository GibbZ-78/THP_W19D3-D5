# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative '../views/show.rb'
require_relative '../models/shop.rb'

# Controller - Class managing all the program logic and mechanics
class Controller

  attr_accessor :csv, :shop

  # new - Creator of a Controller object
  def initialize(my_csv_file)
    if File.exists?(my_csv_file)
      @csv = my_csv_file
      @shop = Shop.new(my_csv_file).load_from_csv(my_csv_file)
    else
      @csv = nil
      @shop = nil
      Show.disp("  > I'm sorry but the backup CSV file you're looking for does not seem to exist... Try again, Stranger!")
    end
  end

  # shop_index - Method listing all existing items within a given shop
  def shop_index
    if @shop.stock != []
      Show.list_items(@shop.stock)
      return true
    else
      Show.disp("  > Sadly, the shop stock is... Empty. Try storing some items before asking for inventory!")
      Show.pause
      return false
    end
  end

  # create_item - Method instantiating a new gossip object accessible by the Controller
  # def create_item(the_author,the_gossip)
  #   my_gossip = Gossip.new(the_author,the_gossip,0,true)
  #   my_gossip.save_to_csv(@csv)
  # end

  # delete_gossip - Launch the Gossip class method 'suppr_gossip_from_csv' to defintively delete the Gossip with given 'id'
  # def delete_gossip(my_gossip_id)
  #   return Gossip.suppr_gossip_from_CSV(@csv, my_gossip_id)
  # end

end

# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
