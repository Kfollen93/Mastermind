# frozen_string_literal: true

require_relative 'colors.rb'

class Instructions
  def instructions
    <<~HEREDOC
     
                                MASTERMIND

      There are six different numbers:

      #{code_colors('1')} #{code_colors('2')} #{code_colors('3')} #{code_colors('4')} #{code_colors('5')} #{code_colors('6')}

    
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
    end
