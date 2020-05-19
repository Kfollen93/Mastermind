# frozen_string_literal: true

require_relative 'instructions.rb'
require_relative 'colors.rb'
require_relative 'selection.rb'
require_relative 'player.rb'
require_relative 'clues.rb'
require_relative 'computer_logic.rb'
require_relative 'computer_clues.rb'

game = Instructions.new
puts game.instructions
game.start_game
player_turns = Player.new
pc_logic = ComputerLogic.new
$start == "1" ? pc_logic.computer_guess : player_turns.player_guess