
class ComputerLogic
    def computer_guess
      1.upto(12) do |i|
        puts "Turn #{i}: The Computer's guess is...\n"#.each_char { |c| putc c ; sleep 0.10 }
        $guess = 4.times.map { Random.rand(1..6) }.to_a 
        print $guess
        #It starts with random, if it gets ! it does X, if it gets ?, it does X, if none, it randoms those again.
        #$guess.each_with_index do | value, index |
        #  if value == $player_master_array[index]
        #    $guess == value
        #    $guess = 3.times.map { Random.rand(1..6) }.to_a 
        #  end
        #end
        #if $guess ==
        
        puts " "
        ComputerClues.exact_matches
        ComputerClues.correct_numbers
        puts " "
        if $guess == $player_master #|| #subequent_guesses == $player_master
          puts "The Computer cracked your code!"
          break #Stops the upto method if you get the answer correct (before 12 times happen).
        elsif i >= 12
          print "You stumped the Computer, good job! The answer was:\n "
          puts " "
          print Select.player_master_code
          puts " "
        end
      end
    end
  end