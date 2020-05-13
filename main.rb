# frozen_string_literal: true

require_relative 'instructions.rb'
require_relative 'colors.rb'
require_relative 'computer.rb'
require_relative 'player.rb'

game = Instructions.new
puts game.instructions
puts game.start_game
player_turns = Player.new
player_turns.player_guess


# *****MASTERMIND*****
# PART 1)
#     - 12 turns to guess the secret code, starting with you guessing the computer's random code.
#         - the computer randomly selects the secret colors and the human player must guess them.
#             - Remember that you need to give the proper feedback on how good the guess was each turn!
#
# PART 2)
#     - Refactor my code to allow the human player to choose whether he/she wants to be
#      the creator of the secret code or the guesser.
#         - Build it out so that the computer will guess if you decide to choose your own secret colors.
#             Start by having the computer guess randomly (but keeping the ones that match exactly).
#              -Next, add a little bit more intelligence to the computer player so that,
#                if the computer has guessed the right color but the wrong position,
#                  its next guess will need to include that color somewhere

