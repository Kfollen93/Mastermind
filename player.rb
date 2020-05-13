# frozen_string_literal: true

class Player
  def player_guess
    1.upto(12) do |i|
      puts "Turn #{i}: Type in four numbers (1 - 6) to guess the code and press 'Enter'."
      guess = gets.chomp
      until guess =~ /\A[1-6]{4}\z/
        puts 'Your guess must only be four digits, using 1 - 6.'
        guess = gets.chomp
      end
      puts "The method would go here to give feedback" #I think this would work? call feedback method?
      if guess == @random_nums#These @random_nums are blank. use modules? create this as a separate method?
        puts "You win!"
      elsif i >= 12
        puts "So close! The answer was #{@random_nums}"#These @random_nums are blank.
      end
    end
  end
end