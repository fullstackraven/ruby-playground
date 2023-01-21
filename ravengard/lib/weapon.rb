require_relative 'display.rb'

class WeaponSelection
  include Display
  attr_accessor :weapons

  def initialize
    @weapons = "(a) Sword\n(b) Axe\n(c) Bow & Arrow\n(d) Dual daggers\n(e) Spear\n(f) Magic Staff"
  end

  def weapon_error
    puts "No weapon selected. All warriors must carry their own weapon."
  end

  def weapon
    loop do
      sleep 1
      puts "Choose your battle companion: "
      puts @weapons
      puts " "
      puts "----------------"
      sleep 1
      puts "State your choice:"
      answer = gets.chomp().downcase.to_s
      puts "----------------"

      if answer == 'a'
        puts "Great choice! You will slay many with this sword."
        answer = true
      elsif answer == 'b'
        puts "Great choice! Swing hard and you will take many with this axe."
        answer = true
      elsif answer == 'c'
        puts "Great choice! Step lightly and take a high ground. You will shoot many with this bow."
        answer = true
      elsif answer == 'd'
        puts "Great choice! May your stealth come in handy with these daggers."
        answer = true
      elsif answer == 'e'
        puts "Great choice! May your accuracy come in handy with this spear."
        answer = true
      elsif answer == 'f'
        puts "Great choice! The power within this staff will provide you much assistance in this war."
        answer = true
      else
        weapon_error
      end
      break if answer == true
    end
  end
end
