# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
# Nothing crazy here as Show is more of a static / abstract class than a standard one #abstraction ;-)

# Show - Class enabling most display-related work within the application complying with the MVC approach
class Show

  # clrscr - Flush the screen using the Xterm command 'clear'
  # WARNING: 'clear' not existing on all OSs, this is not fully portable
  def self.clrscr
    system('clear')
  end

  # println - Display the 'message' content to the STDIN / DISPLAY:0 with a "\n"
  # OK, this is a stupid alias for "puts" (and longer than the original command...) 
  # but, hey, it's 100% OOP now and consistent with the standard "print" ruby command!
  def self.println(message) 
    puts message
  end

  # pause - Insert a 'pause' by forcing the user to press the [Return] key (or any other in fact) for the program to continue
  def self.pause
    Show.disp("")
    Show.disp("... Press [Return] to continue...")
    Show.disp("")
    gets
  end

  # display_menu - Display the main menu, prompt the user for a choice and return its input
  def self.display_menu
    Show.clrscr
    Show.disp("")
    Show.disp("What do you wanna do, today, Stranger?")
    Show.disp("  1) I wanna CREATE a gossip!")
    Show.disp("  2) I'd love to READ all existing gossips.")
    Show.disp("  3) I saw a gossip I'd like to UPDATE, please. [WORK IN PROGRESS]")
    Show.disp("  4) I would like to DELETE a given gossip.")
    Show.disp("  5) I'm fed up with all this gossip sh** and wanna leave!")
    Show.disp("")
    print("   > ")
    return gets.chomp.to_i
  end

  # input_gossip - Prompt the user for the new item characteristics, then return then in a single array
  # NB: might gain from encapsuling this into each item type then specializing it #polymorphism #encapsulation
  def self.input_gossip
    tmp_tab = []
    Show.clrscr
    Show.disp("")
    Show.disp("To input a new gossip, please:")
    Show.disp(" - First enter its author")
    Show.print("   > ")
    tmp_tab[0] = gets.chomp
    Show.disp(" - Then tell us what this is all about")
    Show.print("   > ")
    tmp_tab[1] = gets.chomp
    return tmp_tab
  end

  # list_gossips - Looping display method showing id, author and content of each Gossip of the given array of Gossip objects
  def self.list_gossips(gossip_tab)
    tmp_count = 1
    Show.disp("")
    Show.disp("  Here is the much expected gossip list !")
    Show.disp("")
    gossip_tab.each do |item|
      Show.disp("  > Gossip ##{tmp_count}")
      Show.disp("    - ID : #{item.id}")
      Show.disp("    - Author : #{item.author}")
      Show.disp("    - Content : #{item.content}")
      tmp_count += 1
    end
    Show.disp("")
    Show.disp("  And THAT was the gossip list: happy, stranger?")
    Show.pause
  end

  # prompt_for_deletion - Once the gossip list displayed, ask for the 'id' of the Gossip to be deleted
  def self.prompt_for_deletion
    tmp_id = ""
    Show.disp("")
    Show.disp("To delete one of these gossips you see above, please enter its ID below:")
    Show.print("   > ")
    return gets.chomp.to_i
  end

end

# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)