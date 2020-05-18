
class ComputerLogic
    def computer_guess
      1.upto(12) do |i|
        puts "Turn #{i}: Type in four numbers (1 - 6) to guess the code and press 'Enter'."
        #$guess = gets.chomp This becomes auto from comp logic, random num? 
        until $guess =~ /\A[1-6]{4}\z/ #Probably can remove this? 
          puts 'Your guess must only be four digits, using 1 - 6.'
          $guess = gets.chomp
        end
        puts " "
        $guess_array = $guess.split(//).map!(&:to_i) #Converts guess to an array to compare with Master Code.
        Clues.exact_matches
        Clues.correct_numbers
        puts " "
        if $guess_array == Computer.master_code
          puts "The Computer cracked your code!"
          break #Stops the upto method if you get the answer correct (before 12 times happen).
        elsif i >= 12
          print "You stumped the Computer, good job! The answer was:\n "
          puts " "
          print Computer.master_code
          puts " "
        end
      end
    end
  end