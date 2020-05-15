class Clues
  def self.exact_matches
    @temp_master = $master_code.clone
    exact = 0
    @temp_master.each_with_index do | value, index |
      if value == $guess_array[index]
        exact += 1 
        @temp_master[index] = "!"
        $guess_array[index]  = "!"
      end
    end
    exact
    #print "#{clue_colors("!")}"
  end

  def self.correct_numbers
    @temp_master = $master_code.clone
    correct = 0
    $guess_array.each_with_index do | item, index |
      if $guess_array[index] != "!" && @temp_master.include?($guess_array[index])
        correct += 1
        remove = @temp_master.find_index($guess_array[index])
        @temp_master[remove] = "?"
        $guess_array[index]  = "?"
      end
    end
    correct
  end
end