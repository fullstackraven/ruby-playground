require_relative 'display.rb'
require_relative 'player.rb'

class WeaponSelection
  include Display
  include Player

  attr_accessor :weapon

  def initialize
    @weapon = Array.new
  end

  def weapon_error
    puts "No weapon selected. All warriors must carry their own weapon."
  end

  def weapon
    weapon_options = "(a) Sword\n(b) Axe\n(c) Bow & Arrows\n(d) Dual daggers\n(e) Spear\n(f) Magic Staff"
    loop do
      sleep 1
      puts " "
      puts "Choose your battle companion: "
      puts weapon_options 
      display_choice
      answer = gets.chomp().downcase.to_s
      puts "----------------"

      if answer == 'a'
        puts "Great choice! You will slay many with this sword."
        answer = 'Sword'
        @weapon << answer
        answer = true
      elsif answer == 'b'
        puts "Great choice! Swing hard and you will take many with this axe."
        answer = 'Axe'
        @weapon << answer
        answer = true
      elsif answer == 'c'
        puts "Great choice! Step lightly and take a high ground. You will shoot many with this bow."
        answer = 'Bow & Arrows'
        @weapon << answer
        answer = true
      elsif answer == 'd'
        puts "Great choice! May your stealth come in handy with these daggers."
        answer = 'Dual Daggers'
        @weapon << answer
        answer = true
      elsif answer == 'e'
        puts "Great choice! May your accuracy come in handy with this spear."
        answer = 'Spear'
        @weapon << answer
        answer = true
      elsif answer == 'f'
        puts "Great choice! The power within this staff will provide you much assistance in this war."
        answer = 'Magic Staff'
        @weapon << answer
        answer = true
      else
        weapon_error
      end
      break if answer == true
    end
  end

  def get_weapon
    print @weapon.join(', ')
  end
end

# weapon = WeaponSelection.new
# weapon.weapon
# weapon.get_weapon
