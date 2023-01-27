require_relative 'display.rb'
require_relative 'player.rb'
require_relative 'intro.rb'

class WeaponSelection < Intro
  include Display
  include Player

  attr_accessor :weapon, :intro, :name

  def initialize
    @weapon = nil
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
        puts "Great choice #{@@name}! You will slay many with this sword."
        answer = 'Sword'
        @weapon = answer
        answer = true
      elsif answer == 'b'
        puts "Great choice #{@@name}! Swing hard and you will take many with this axe."
        answer = 'Axe'
        @weapon = answer
        answer = true
      elsif answer == 'c'
        puts "Great choice#{@@name}! Step lightly and take a high ground. You will shoot many with this bow."
        answer = 'Bow & Arrows'
        @weapon = answer
        answer = true
      elsif answer == 'd'
        puts "Great choice #{@@name}! May your stealth come in handy with these daggers."
        answer = 'Dual Daggers'
        @weapon = answer
        answer = true
      elsif answer == 'e'
        puts "Great choice #{@@name}! May your accuracy come in handy with this spear."
        answer = 'Spear'
        @weapon = answer
        answer = true
      elsif answer == 'f'
        puts "Great choice #{@@name}! The power within this staff will provide you much assistance in this war."
        answer = 'Magic Staff'
        @weapon = answer
        answer = true
      else
        weapon_error
      end
      break if answer == true
    end
  end

  def show_weapon
    puts "Weapon: #{@weapon}"
    puts "*-*-*-*-*-*"
    puts " "
  end
end