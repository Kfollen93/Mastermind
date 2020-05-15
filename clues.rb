class Clues
  def self.exact_matches
    exact = 0
    $master_code.each_with_index do | value, index |
      if value == $guess_array[index]
        exact += 1 
        $master_code[index] = "!"
        $guess_array[index]  = "!"
      end
    end
    exact
  end

  def self.correct_numbers
    correct = 0
    $guess_array.each_with_index do | item, index |
      if $guess_array[index] != "!" && $master_code.include?($guess_array[index])
        correct += 1
        remove = $master_code.find_index($guess_array[index])
        $master_code[remove] = "?"
        $guess_array[index]  = "?"
      end
    end
    correct
  end
end