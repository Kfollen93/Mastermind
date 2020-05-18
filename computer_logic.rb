
class ComputerLogic
    def computer_guess
      1.upto(12) do |i|
        puts "Turn #{i}: The Computer's guess is\n"
        $guess = 4.times.map { Random.rand(1..6) }.to_a 
        #It starts with random, if it gets ! it does X, if it gets ?, it does X, if none, it randoms those again.
        print $guess
        puts " "
        #Will computer following guess enter as string or array? First_guess is an Array.
        #$guess_array = $guess.split(//).map!(&:to_i) #Converts guess to an array to compare with Master Code.
        ComputerClues.exact_matches
        ComputerClues.correct_numbers
        puts " "
        if $guess == $player_master #|| #subequent_guesses == $player_master
          puts "The Computer cracked your code!"
          break #Stops the upto method if you get the answer correct (before 12 times happen).
        elsif i >= 12
          print "You stumped the Computer, good job! The answer was:\n "
          puts " "
          print Computer.player_master_code
          puts " "
        end
      end
    end
  end