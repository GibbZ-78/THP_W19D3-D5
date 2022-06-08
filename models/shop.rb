# shop.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes
require_relative '../views/show.rb'
require_relative '../controllers/controller.rb'
require_relative './item.rb'
require 'io/console'

# Shop - Class allowing to instantiate a shop (full of items stored in an array) and to back it up to a CSV file
class Shop

  attr_accessor :name, :stock, :file
  
  def initialize(my_file, my_name = "GibbZ' Lair")
    @name = my_name
    @stock = []
    @file = my_file
  end

  # load_from_csv - Open the pointed CSV file (if exists, if not return nil) and return a table containing all the related items
  def load_from_csv(my_csv_filename, verbose = true)
    tmp_file = nil
    tmp_lines_tab = []
    tmp_item_tab = []
    tmp_all_items_tab = []
    tmp_line_counter = 0
    if verbose
      Show.displn("")
      Show.displn("Reading all items from CSV file:")
      Show.displn("  > Searching for the pointed CSV file '#{my_csv_filename}'.")
    end
    if !File.exists?(my_csv_filename)
      if verbose
        Show.displn("  > Sought CSV file '#{my_csv_filename}' does not exist, sorry. Hence not able to display any item.")
      end
      self.stock = []
    else
      if verbose
        Show.displn("  > CSV file found. Block reading from it.")
      end
      tmp_lines_tab = IO.readlines(my_csv_filename)
      tmp_lines_tab.each do |my_line|
        tmp_item_tab = my_line.split("|")
        tmp_all_items_tab.push(Item.new(tmp_item_tab[0].chomp.to_i,   # id
                                        tmp_item_tab[1].chomp,        # descr
                                        tmp_item_tab[2].chomp,        # brand
                                        tmp_item_tab[3].chomp.to_f,   # price      
                                        tmp_item_tab[4].chomp.to_i    # quantity
                                      ))
        tmp_line_counter += 1
      end
      if verbose
        Show.displn("  > Read #{tmp_line_counter} line(s) from the '#{my_csv_filename}' CSV file and stored them into an array of Item objects.")
      end
      self.stock = tmp_all_items_tab
    end
  end

  # save_to_csv - Erase and replace the whole file content with the Shop stock
  # def save_to_csv(my_csv_filename)
  #   Show.displn("")
  #   Show.displn("Saving items into CSV file:")
  #   Show.displn("  > Searching for backup file '#{my_csv_filename}'.")
  #   if File.exists?(my_csv_filename)
  #     Show.displn("  > File '#{my_csv_filename}' exists already - Appending your item.")
  #     tmp_file = File.open(my_csv_filename, "a")
  #     tmp_file.write("#{self.id}|#{self.author}|#{self.content}\n")
  #     tmp_file.close
  #   else
  #     Show.displn("  > File '#{my_csv_filename}' does not exist - Creating, opening and writing the gossip into the file.")
  #     File.write(my_csv_filename, "#{self.id}|#{self.author}|#{self.content}\n")
  #   end
  #   Show.displn("  > Data written.")
  #   Show.displn("  > Closing file.")
  #   Show.pause
  # end

  # suppr_gossip_from_CSV - Capture all lines of CSV file (if exists) in an array. Delete item with given 'id' then overwrite file with the update array
  # def self.suppr_gossip_from_CSV(my_csv_filename, gossip_id)
  #   tmp_lines_tab = []
  #   tmp_gossip_items_tab = []
  #   tmp_block_write = ""
  #   if !File.exists?(my_csv_filename)
  #     Show.displn("  > File does not exist, sorry. Hence not able to play with it.")
  #     return false
  #   else
  #     tmp_lines_tab = IO.readlines(my_csv_filename)
  #     tmp_lines_tab.each do |my_line|
  #       tmp_gossip_items_tab = my_line.split("|")
  #       if tmp_gossip_items_tab[0].to_i != gossip_id
  #         tmp_block_write += "#{tmp_gossip_items_tab[0].chomp}|#{tmp_gossip_items_tab[1].chomp}|#{tmp_gossip_items_tab[2].chomp}\n"
  #       end
  #     end
  #     File.write(my_csv_filename,tmp_block_write)
  #   end
  # end

end

# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
