require_relative 'history.rb'
require_relative 'player.rb'
require_relative 'warrior.rb'
require_relative 'weapon.rb'
require_relative 'armor.rb'
require_relative 'intro.rb'
require_relative 'display.rb'

def play_game
  game = Intro.new
  game.play
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
