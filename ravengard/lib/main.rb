require_relative 'history.rb'
require_relative 'player.rb'
require_relative 'weapon.rb'
require_relative 'armor.rb'
require_relative 'intro.rb'
require_relative 'display.rb'
require_relative 'campaigns.rb'

def play_game
  include Display
  intro = Intro.new
  intro.play_intro
  weapon_select = WeaponSelection.new
  weapon_select.weapon
  armor_select = ArmorSelection.new
  armor_select.armor
  intro.update_intro
  armor_select.show_armor
  weapon_select.show_weapon
  intro.finish_intro
  display_replay_game
end

play_game

