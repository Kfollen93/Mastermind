class Clues
	def self.exact_matches
		@temp_master = $master_code.clone
		@temp_guess = $guess_array.clone
		exact = 0
		@temp_master.each_with_index do | value, index |
			if value == @temp_guess[index]
				exact += 1 
				@temp_master[index] = "!"
				@temp_guess[index]  = "!"
			end
		end
		exact.times{print clue_colors("!")}
	end

	def self.correct_numbers
		correct = 0
		@temp_guess.each_with_index do | value, index |
			if @temp_guess[index] != "!" && @temp_master.include?(@temp_guess[index])
				correct += 1
				remove = @temp_master.find_index(@temp_guess[index])
				@temp_master[remove] = "?"
				@temp_guess[index]  = "?"
			end
		end
		correct.times{print clue_colors("?")}
	end