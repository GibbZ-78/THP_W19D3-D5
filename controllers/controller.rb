# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative '../views/show.rb'
require_relative '../models/shop.rb'

# Controller - Class managing all the program logic and mechanics
class Controller

  attr_accessor :shop

  # new - Creator of a Controller object
  def initialize(my_csv_file)
    if File.exists?(my_csv_file)
      @shop = Shop.new(my_csv_file)
      if @shop.load_from_csv()
        Show.disp("  > Shop successfully created and loaded from CSV file '#{my_csv_file}'!")
      else 
        Show.disp("  > I'm afraid something went wrong when trying to load the shop with file '#{my_csv_file}'... Shop remains empty.")
        @shop = []
      end
    else
      @shop = []
      Show.disp("  > I'm sorry but the backup CSV file you're looking for does not seem to exist... Try again, Stranger!")
    end
  end

  # shop_index - Method listing all existing items within a given shop
  def shop_index
    if @shop.stock.empty?
      Show.disp("  > Sadly, the shop stock seems... Totally empty. Try storing some items before asking for inventory, maybe?")
      Show.pause
      return false
    end
    Show.list_items(@shop.stock)
    return true
  end

  # item_show - Method displaying all detailed informations of a given item
  def item_show(item)
    if @shop.stock.empty? 
      Show.disp("  > I'm really sorry but the shop being more than empty, I cannot satisfy your request to see a specific item so far.")
      Show.pause
      return false
    end
    Show.show_item(item)
    return true
  end

  # item_create - Method instantiating a new item in the stock (instance array var) of the shop (then saving the shop into the CSV file ?)
  # TO DO: cf. below
  def item_create
    my_tmp_tab = Show.input_item
    my_tmp_id = @shop.get_next_id 
    my_tmp_tab[0] = my_tmp_id.nil? ? 0 : my_tmp_id
    my_item = Item.new(my_tmp_tab[0],   # id
                      my_tmp_tab[1],    # name
                      my_tmp_tab[2],    # brand
                      my_tmp_tab[3],    # unit_price
                      my_tmp_tab[4])    # my_quantity
    @shop.add_item_to_shop(my_item)
    # TO DO: instantly save the updated shop into the CSV file or delay this task ?
  end

  # item_delete - Method deleting the given item in the stock (instance array var) of the shop (then saving the shop into the CSV file ?)
  # TO DO: cf. below
  def item_delete(item_id)
    @shop.stock = @shop.stock.reject { |obj| obj.id == item_id }
    # TO DO: instantly save the updated shop into the CSV file or delay this task ?
  end

end

# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
