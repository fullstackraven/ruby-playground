require_relative 'history.rb'
require_relative 'player.rb'
require_relative 'warrior.rb'
require_relative 'weapon.rb'
require_relative 'armor.rb'
require_relative 'intro.rb'


def play_game
  game = Intro.new
  game.intro
  game.update
  game.identification
  weapon_select = WeaponSelection.new
  weapon_select.weapon
  armor_select = ArmorSelection.new
  armor_select.armor
  game.decision1
  replay_game
end

def replay_game
  puts "Would you like to play a new game?\n(a) Yes\n(b) No"

  puts "----------------"
    sleep 1
    puts "State your choice:"
  replay_input = gets.chomp.downcase
  if replay_input == 'a'
    play_game
  else
    puts " "
    puts "Thanks for playing Ravengard!"
  end
end

play_game