# Welcome! You have entered into Ravengard! A simple but fun take on a scripted prompt and answer battle game
# Do you have what it takes to win the great war?
# Only the strong will prevail. Good luck!
require_relative 'display.rb'
require_relative 'history.rb'

class Intro
  include Display
  include History

  attr_accessor :name, :age, :form, :location, :skill, :level, :weapon_select, :armor_select

  def initialize
    @name = nil
    @age = nil
    @form = nil
    @location = nil
    @skill = nil
    @level = 1
    @weapon_select = WeaponSelection.new
    @armor_select = ArmorSelection.new
  end

  def play
    play_intro
    weapon_select.weapon
    armor_select.armor
    decision1
  end

  def play_intro
    display_intro_graphics
    history_intro_script
    player_name
  end

  def player_name
    display_intro_name
    @name = gets.chomp().capitalize
    player_age
  end

  def player_age
    display_intro_age(@name, @age)
    @age = gets.chomp().to_i
    display_age_check(@age)
    player_form
  end

  def player_form
    display_intro_form
    @form = gets.chomp().capitalize
    player_location
  end

  def player_location
    display_intro_location(@form)
    @location = gets.chomp().capitalize
    player_skill
  end

  def player_skill
    display_intro_skill
    @skill = gets.chomp().capitalize
    display_battle_cry
    update
  end

  def update
    puts " "
    puts "Would you like to change any personal stats or information before moving on? You will not be able to edit after this point."
    puts "(a) Yes\n(b) No"
    puts " "
    puts "----------------"
    sleep 1
    puts "State your choice:"
    edit = gets.chomp().downcase
    if edit == 'b'
      puts "----------------"
      puts "Saving complete"
      display_identification(@level, @name, @age, @form, @location, @skill)
    elsif edit == 'a'
      puts display_update_id(@level, @name, @age, @form, @location, @skill)
    end
  end

  def decision1
    loop do
      puts " "
      sleep 1
      puts "Begin training for battle or join your legion platoon: "
      puts "(a) Hone my skills\n(b) No practice. I'm ready for battle!"
      puts " "
      puts "----------------"
      sleep 1
      puts "State your choice:"
      run_campagin = gets.chomp().downcase.to_s
      puts "----------------"

      if run_campagin == 'a'
        puts " "
        sleep 1
        puts "#{@name}, a wise choice! Your training has leveled you up."
        @level += 1
        display_level_up
        display_identification(@level, @name, @age, @form, @location, @skill)
        run_campagin = true
      elsif run_campagin == 'b'
        puts " "
        puts "#{@name}, all #{@form}'s must be born ready. Your platoon is across the field. Collect your weapon and meet up with the platoon leader."
        puts " "
        run_campagin = true
      else
        puts display_input_warning
      end
      break if run_campagin == true
    end
  end
end
