# Welcome! You have entered into Ravengard! A simple but fun take on a scripted prompt and answer battle game
# Do you have what it takes to win the great war?
# Only the strong will prevail. Good luck!
require_relative 'display.rb'
require_relative 'history.rb'
require_relative 'player.rb'

class Intro
  include Display
  include History
  include Player

  attr_accessor :name, :age, :form, :location, :skill, :level, :health, :strength, :weapon_select, :armor_select

  @@name = nil
  @@age = nil
  @@form = nil
  @@location = nil
  @@skill = nil
  @@level = 1

  def initialize
    # @name = nil
    # @age = nil
    # @form = nil
    # @location = nil
    # @skill = nil
    # @level = 1
    @health = health 
    @strength = strength 
    @weapon_select = WeaponSelection.new
    @armor_select = ArmorSelection.new
  end

  def play
    play_intro
    weapon_select.weapon
    armor_select.armor
    display_update(@@level, @@name, @@age, @@form, @@location, @@skill)
    display_battle_cry
    display_train_or_join(@@name, @@form, @@level)
  end

  def play_intro
    display_intro_graphics
    history_intro_script
    player_intro_prompts
  end
end
