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
  intro.play
  display_replay_game
end

play_game

