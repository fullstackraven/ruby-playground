require_relative 'intro.rb'

class WeaponSelection < Intro
    #include Player
    attr_accessor :weapons, :name
    attr_reader :intro

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
        #answer = false
        puts " "
        puts "----------------"
        sleep 1
        puts "State your choice:"
        answer = gets.chomp().downcase.to_s
        puts "----------------"
  
        if answer == 'a'
          puts "Great choice, #{@@name}! You will slay many with this sword."
          answer = true
        elsif answer == 'b'
          puts "Great choice, #{@@name}! Swing hard and you will take many with this axe."
          answer = true
        elsif answer == 'c'
          puts "Great choice, #{@@name}! Step lightly and take a high ground. You will shoot many with this bow."
          answer = true
        elsif answer == 'd'
          puts "Great choice, #{@@name}! May your stealth come in handy with these daggers."
          answer = true
        elsif answer == 'e'
          puts "Great choice, #{@@name}! May your accuracy come in handy with this spear."
          answer = true
        elsif answer == 'f'
          puts "Great choice, #{@@name}! The power within this staff will provide you much assistance in this war."
          answer = true
        else
          weapon_error
        end
        break if answer == true
      end
    end
  end