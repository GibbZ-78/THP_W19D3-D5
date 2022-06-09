# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative '../controllers/controller.rb'
require_relative '../views/show.rb'

# Router - Class branching the user to the relevant Controllers and/or Views to enable interacting wit the Model #mvcpowaa
class Router

  attr_accessor :controller

  def initialize
    @controller = Controller.new($csv)
  end 

  # This is where all the routing magic happens... 
  # Sorry for using a "case...when", I know how much sore this is for some of you :-)
  def perform 
    exit = false
    Show.welcome(@controller.shop.name)
    while !exit
      choice = Show.main_menu
      case choice
      when 1 # READ all stored gossips
        if @controller.shop_index

        else
          Show.pause
        end
      when 2 # CREATE a new item
        tmp_result = @controller.item_create
      when 3 # EXIT from shop
        Show.goodbye(@controller.shop.name)
        exit = true
      else
        Show.displn("/!\\ You apparently encountered difficulties typing an adequate choice... Please try again /!\\")
      end
    end
  end
end

# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)