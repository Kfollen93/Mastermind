# frozen_string_literal: true

require_relative 'colors.rb'

class Instructions
  def instructions
    <<~HEREDOC
     
                                MASTERMIND

      There are six different numbers:

      1   2   3   4   5   6

    
      The Code Maker will choose four digits to create a 'Master Code' from these numbers (1 - 6).
      There can be more than one of the same number, but only 4 digits in length.

      The Code Breaker needs to guess the 'Master Code' in 12 turns or less.
      The Code Breaker is only trying to match the numbers, the colors are purely visual.

      Upon each guess there will be clues provided:

      #{clue_colors("!")} Represents you have a correct number in the correct location.
      #{clue_colors("?")} Represents you have a correct number, but in the wrong location.
      There is no feedback for a number that is not part of the Master Code (which is a hint).

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
    puts "Placeholder"
    elsif $start == "2"
      pc = Computer.new
      pc.computer_code_set
    end
  end

end
