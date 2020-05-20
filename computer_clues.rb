
class ComputerClues
	def self.exact_matches
		@temp_player_master = $player_master_array.clone
		@temp_computer_guess = $guess.clone
		exact = 0
		@temp_player_master.each_with_index do |value, index|
			if value == @temp_computer_guess[index]
				exact += 1 
				@temp_player_master[index] = "!"
				@temp_computer_guess[index]  = "!"
			end
		end
		exact.times{print clue_colors("!")}
	end
		def self.correct_numbers
		correct = 0
		@temp_computer_guess.each_with_index do |value, index|
			if @temp_computer_guess[index] != "!" && @temp_player_master.include?(@temp_computer_guess[index])
				correct += 1
				remove = @temp_player_master.find_index(@temp_computer_guess[index])
				@temp_player_master[remove] = "?"
				@temp_computer_guess[index]  = "?"
			end
		end
		correct.times{print clue_colors("?")}
  end
end