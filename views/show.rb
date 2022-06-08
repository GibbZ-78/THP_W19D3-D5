# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
# Nothing crazy here as Show is more of a static / abstract class than a standard one #abstraction ;-)

# Show - Class enabling most display-related work within the application complying with the MVC approach
class Show

  # clrscr - Flush the screen using the Xterm command 'clear'
  # WARNING: 'clear' does not exist on all OSs, hence this code is not fully portable
  def self.clrscr
    system('clear')
  end

  # disp - Display the 'message' content to the STDIN (DISPLAY:0) *without* a "\n" (line feed)
  # OK, this is just an alias for the Ruby standard command "print" but, hey, it's 100% OOP now 
  # and keeps more consistent than the usual "print" and "puts" ruby commands!
  def self.disp(message) 
    print message
  end

  # displn - Display the 'message' content to the STDIN (DISPLAY:0) *with* a "\n" (line feed)
  # OK, this is a stupid alias for "puts" (even more knowing it's longer than the original command...) 
  # but, hey, it's 100% OOP now and more consistent than the standard "print" and "puts" ruby command!
  def self.displn(message) 
    puts message
  end

  # pause - Insert a 'pause' by forcing the user to press the [Return] key (or any other in fact) for the program to continue
  def self.pause
    Show.displn("")
    Show.displn("... Press [Return] to continue...")
    Show.displn("")
    gets
  end

  # main_menu - Display the main menu, prompt the user for a choice and return its input
  def self.main_menu
    Show.displn("")
    Show.displn("How can I help you, today?")
    # Show.displn("  1) I wanna CREATE a gossip!")
    Show.displn("  2) I'd love to list all existing items in the shop (READ).")
    # Show.displn("  3) I saw an item I'd like to update (UPDATE)")
    # Show.displn("  4) I would like to DELETE a given item (DELETE).")
    Show.displn("  5) I'm fed up with all this and wanna leave your shop!")
    Show.displn("")
    disp("   > ")
    return gets.chomp.to_i
  end

  # list_gossips - Looping display method showing id, descr, brand, unit price and quantity of all
  def self.list_items(items_tab)
    tmp_count = 1
    Show.displn("")
    Show.displn("  Here is the much expected list of all our items !")
    Show.displn("")
    items_tab.each do |item|
      Show.displn("  > Item ID: #{item.id} - Description: #{item.descr} - Brand : #{item.brand} - Price: #{item.price} - Quantity: #{item.quantity}")
    end
    Show.displn("")
    Show.displn("  And THAT was the comprehensive of all what we sell.")
    Show.pause
  end

  # input_gossip - Prompt the user for the new item characteristics, then return then in a single array
  # NB: might gain from encapsuling this into each item type then specializing it #polymorphism #encapsulation
  def self.input_gossip
    tmp_tab = []
    Show.clrscr
    Show.displn("")
    Show.displn("To input a new gossip, please:")
    Show.displn(" - First enter its author")
    Show.disp("   > ")
    tmp_tab[0] = gets.chomp
    Show.displn(" - Then tell us what this is all about")
    Show.disp("   > ")
    tmp_tab[1] = gets.chomp
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