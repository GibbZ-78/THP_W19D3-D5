# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
# Nothing crazy here as Show is more of a static / abstract class than a standard one #abstraction ;-)

# Show - Class enabling most display-related work within the application complying with the MVC approach
class Show

  # clrscr - Static method flushing the screen using the Xterm command 'clear'
  # WARNING: 'clear' does not exist on all OSs, hence this code is not fully portable
  def self.clrscr
    system('clear')
  end

  # disp - Static method displaying the 'message' content to the STDIN (DISPLAY:0) *without* a "\n" (line feed)
  # OK, this is just an alias for the Ruby standard command "print" but, hey, it's 100% OOP now 
  # and keeps more consistent than the usual "print" and "puts" ruby commands!
  def self.disp(message) 
    print message
  end

  # displn - Static method displaying the 'message' content to the STDIN (DISPLAY:0) *with* a "\n" (line feed)
  # OK, this is a stupid alias for "puts" (even more knowing it's longer than the original command...) 
  # but, hey, it's 100% OOP now and more consistent than the standard "print" and "puts" sibling ruby command!
  def self.displn(message) 
    puts message
  end

  # pause - Static method inserting a 'pause' by forcing the user to press the [Return] key (or any other in fact) for the program to continue
  def self.pause
    Show.displn("")
    Show.displn("... Press [Return] to continue...")
    Show.displn("")
    gets
  end

  # welcome - Static method displaying the shop splash screen
  def self.welcome(shop_name)
    Show.displn("")
    Show.displn("")
    Show.displn("--~={ !! Welcome to #{shop_name} !! }=~--")
    Show.displn("")
  end

  # goodbye - Static method displaying the shop exit message
  def self.goodbye(shop_name)
    Show.displn("")
    Show.displn("")
    Show.displn("--~={ !! Goodbye... Hope to see you (not too) soon at #{shop_name}, Stranger !! }=~--")
    Show.displn("")
  end

  # main_menu - Static method displaying the main menu, prompting the user for a choice and returning its input
  def self.main_menu
    Show.displn("")
    Show.displn("What do you want to do, today?")
    Show.displn("")
    Show.displn("  1) List all existing items in the shop (READ)")
    Show.displn("  2) Add a new item to the shop (CREATE)")
    Show.displn("  3) Quit all this consumerism, now! (EXIT)")
    Show.displn("")
    disp("  ? ")
    return gets.chomp.to_i
  end

  # list_items - Static looping display method showing ID and NAME only of each item sold in the shop
  def self.list_items(items_tab)
    tmp_count = 1
    Show.displn("")
    Show.displn("  Here is the much expected list of all our items !")
    Show.displn("")
    items_tab.each do |item|
      Show.displn("  > Item ID: #{item.id} - Name: #{item.name}")
      tmp_count += 1
    end
    Show.displn("")
    Show.displn("  And THAT was the synthetic list of the #{tmp_count} item type(s) we sell hereby.")
  end

  # show_item - static method showing ID, NAME, BRAND, UNIT PRICE and QUANTITY of all items in the Shop
  def self.show_item(item)
    Show.displn("")
    Show.displn("  Here are the details of the item you were looking for...")
    Show.displn("")
    Show.displn("  > Item ID: #{item.id} - Name: #{item.name} - Brand : #{item.brand} - Price: #{item.unit_price} - Quantity: #{item.quantity}")
    Show.displn("")
    Show.pause
  end

  # input_item - Static method prompting the user for the new item characteristics, then returning them in a single array
  # NB: might gain from encapsuling this into each item type then specializing it #polymorphism
  # Item > id, name, brand, unit_price, quantity
  def self.input_item
    tmp_tab = [0,"","",0.0,0]
    Show.displn("")
    Show.displn("To input a new item into our stock, please enter its characteristics hereby:")
    while tmp_tab[1].length < 3 && tmp_tab[1].length > 50
      Show.disp("  > Name (3 to 50 characters) ? ")
      tmp_tab[1] = gets.chomp
    end
    while tmp_tab[2].length < 3 && tmp_tab[2].length > 50
      Show.disp("  > Brand (3 to 50 character) ? ")
      tmp_tab[2] = gets.chomp
    end
    while tmp_tab[3] <= 0.0
      Show.disp("  > Unit price (greater than 0, use '.' as decimal separator) ? ")
      tmp_tab[3] = gets.chomp.to_f
    end
    while tmp_tab[4] <= 0
      Show.disp("  > Quantity (greater than 0) ? ")
      tmp_tab[4] = gets.chomp.to_i
    end
    return tmp_tab
  end

  # prompt_for_deletion - Once the gossip list displayed, ask for the 'id' of the Gossip to be deleted
  def self.prompt_for_deletion
    tmp_id = ""
    Show.displn("")
    Show.displn("To delete one of these gossips you see above, please enter its ID below:")
    Show.disp("   > ")
    return gets.chomp.to_i
  end

end

# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)