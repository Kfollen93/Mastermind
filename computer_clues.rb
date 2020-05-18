
class ComputerClues
    def self.exact_matches
        @temp_player_master = $player_master_array.clone #This will need new name and physical input from human.
        #@temp_guess = $guess_array.clone  This will need to match up with the computer's input.
        exact = 0
        @temp_player_master.each_with_index do | value, index |
          if value == @temp_guess[index]
            exact += 1 
            @temp_player_master[index] = "!"
            @temp_guess[index]  = "!"
          end
        end
        exact.times{print clue_colors("!")}
      end
    
      def self.correct_numbers
        correct = 0
        @temp_guess.each_with_index do | value, index |
          if @temp_guess[index] != "!" && @temp_player_master.include?(@temp_guess[index])
            correct += 1
            remove = @temp_player_master.find_index(@temp_guess[index])
            @temp_player_master[remove] = "?"
            @temp_guess[index]  = "?"
          end
        end
        correct.times{print clue_colors("?")}
      end
end