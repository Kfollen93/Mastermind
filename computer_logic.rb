
class ComputerLogic
  def computer_guess
    1.upto(12) do |i|
      "Turn #{i}: The Computer's guess is...\n".each_char { |c| putc c ; sleep 0.05 }
      $guess = generate_guess($guess)
      print $guess
      puts " "
      ComputerClues.exact_matches
      ComputerClues.correct_numbers
      puts " "
      if $guess == $player_master_array
        puts "The Computer cracked your code!"
        break #Stops the upto method if you get the answer correct (before 12 times happen).
      elsif i >= 12
        print "You stumped the Computer, good job!"
        puts " "
      end
    end
  end

  def generate_guess(guess)
    if guess.nil? #returns true on first loop, only executes once.
      4.times.map { Random.rand(1..6) }.to_a
    else
      guess.map.with_index do |num, index|
        if guess[index] == $player_master_array[index]
          num
        else
          Random.rand(1..6)
        end
      end
    end
  end
end