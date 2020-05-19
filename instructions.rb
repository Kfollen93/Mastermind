# frozen_string_literal: true

require_relative 'colors.rb'

class Instructions
  def instructions
    <<~HEREDOC
     
                                MASTERMIND

      There are six different numbers:

      1   2   3   4   5   6

    
      The Code Maker selects four digits to create a 'Master Code'.
      There can be two or more of the same number.

      The Code Breaker needs to guess the 'Master Code' in 12 turns or less.

      Upon each guess there will be clues provided:

      #{clue_colors("!")} Represents a correct number, in the correct location.
      #{clue_colors("?")} Represents a correct number, but in the wrong location.
      No feedback for a number that is not part of the Master Code (which is a hint).

      START:

      Press '1' to be the Code MAKER
      Press '2' to be the Code BREAKER

    HEREDOC

  end

  def start_game
    $start = gets.chomp
    while $start != "1" || $start != "2"
      break if $start == "1" || $start == "2"
      puts 'Please choose (1) Code Maker or (2) Code Breaker'
      $start = gets.chomp
    end
    if $start == "1"
      pc = Select.new
      pc.player_set_code
    elsif $start == "2"
      pc = Select.new
      pc.computer_set_code
    end
  end

end
