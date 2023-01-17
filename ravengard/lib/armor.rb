require_relative 'intro.rb'

class ArmorSelection < Intro
  # include Player
  attr_accessor :armor
  attr_reader :intro

  def initialize
    @armor = Array.new
  end

  def armor_error
    puts " "
    puts "No armor selected. Are you sure you want to continue without armor?\n(a) Yes\n(b) No"
    puts "----------------"
    sleep 1
    puts "State your choice:"
    error_input = gets.chomp.downcase
    if error_input == 'b'
      armor
    else
      puts "----------------"
      puts "Saving complete"
    end
  end

  def armor
    armor_options = "(a) Helmet\n(b) Chain mail\n(c) Round shield\n(d) Lamellar\n(e) Enchanted leather tunic\n(f) Cloth hooded cloak"
    
    sleep 1
    puts " "
    puts "Choose your battle armor: "
    puts armor_options
    puts " "
    puts "----------------"
    sleep 1
    puts "State your choice:"
    answer = gets.chomp.downcase.to_s
    puts "----------------"

      if answer == 'a'
        answer = "Helmet"
        @armor << answer
        armor_new
      elsif answer == 'b'
        answer = "Chain mail"
        @armor << answer
        armor_new
      elsif answer == "c"
        answer = "Round shield"
        @armor << answer
        armor_new
      elsif answer == "d"
        answer = "Lamellar"
        @armor << answer
        armor_new
      elsif answer == "e"
        answer = "Enchanted leather tunic"
        @armor << answer
        armor_new
      elsif answer == "f"
        answer = "Cloth hooded cloak"
        @armor << answer
        armor_new
      else
        armor_error
      end
  end

  def armor_new
    puts " "
    puts "Would you like to select another piece of armor?\n(a) Yes\n(b) No"
    puts "----------------"
    sleep 1
    puts "State your choice:"
    select_more = gets.chomp.downcase.to_s
    if select_more == 'a'
      armor
    elsif select_more == 'b'
      puts "----------------"
      puts "Saving complete"
      puts " "
      puts "Your armor: #{@armor}"
    end
  end
end
