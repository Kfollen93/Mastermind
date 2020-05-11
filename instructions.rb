class Instructions
    def instructions
        <<~HEREDOC
        Mastermind

        This is a 1-player game against the computer. 
        You can choose to be the Code Maker or the Code Breaker
        There are six different number/color combinations:
        
        #1.red? 2.green? etc etc
        
        
        The code maker will choose four to create a 'Master Code'. For example,
        #1.red? 2.green? etc etc
        
        There can be more than one of the same number/color.
        In order to win, the Code Breaker needs to guess the 'Master Code' in 12 or less turns.
        
        
        Clues:

        After each guess, there will be up to four clues to help crack the code.
        # green "*" This clue means you have a correct number in the correct location.
        # red "?" This clue means you have a correct number, but in the wrong location.
        You will not receive any feedback for a number that is not included (which is a hint itself).
        
        Let's Play:

        Would you like to be the Code Maker or the Code Breaker?
        Press '1' to be the Code MAKER
        Press '2' to be the Code BREAKER
        HEREDOC
      end
    end