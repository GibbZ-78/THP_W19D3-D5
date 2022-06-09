# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative '../controllers/controller.rb'
require_relative '../views/show.rb'

# Router - Class branching the user to the relevant Controllers and/or Views to enable interacting wit the Model #mvcpowaa
class Router

  attr_accessor :controller

  def initialize
    Show.clrscr
    @controller = Controller.new($csv)
  end 

  # This is where all the routing magic happens... 
  # Sorry for using a "case...when", I know how much sore this is for some of you :-)
  def perform 
    Show.welcome(@controller.shop.name)
    self.main_route
  end

  # main_route - Manages the main menu of the shop
  def main_route
    exit_shop = false
    while !exit_shop
      case Show.main_menu
      when 1 # LIST all stored items
        self.item_select_route
      when 2 # CREATE a new item
        @controller.item_create
      when 3 # EXIT from shop
        Show.goodbye(@controller.shop.name)
        exit_shop = true
      else
        Show.displn("/!\\ You apparently encountered difficulties typing an adequate choice... Please try again /!\\")
      end
    end
  end

  # item_select_route - Manages routing to the item details
  def item_select_route
    exit_item_select = false
    while !exit_item_select
      if @controller.shop_index
        choice = Show.select_item_menu
        if choice != 0
          if @controller.item_show(choice)
            self.item_actions_route(choice)
          else
            exit_item_select = true
          end
        else
          exit_item_select = true
        end
      else
        exit_item_select = true
      end
    end
  end

  # item_actions_route - Manages routing to the item details
  def item_actions_route(my_item_id)
    exit_item_actions = false
    while !exit_item_actions
      case Show.item_actions_menu
      when 1 # UPDATE current item
        @controller.item_update(my_item_id)
      when 2 # DELETE current item
        @controller.item_delete(my_item_id)
        exit_item_actions = true
      when 3 # EXIT from item actions menu
        exit_item_actions = true
      else
        Show.displn("/!\\ You apparently encountered difficulties typing an adequate choice... Please try again /!\\")
      end
    end
  end

end

# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)