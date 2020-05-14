# frozen_string_literal: true
require_relative 'computer.rb'

class Player
  def player_guess
    1.upto(12) do |i|
      puts "Turn #{i}: Type in four numbers (1 - 6) to guess the code and press 'Enter'."
      puts Computer.display
      guess = gets.chomp #I'll need to turn this into .split(//) for each num in array to compare
      until guess =~ /\A[1-6]{4}\z/
        puts 'Your guess must only be four digits, using 1 - 6.'
        guess = gets.chomp
      end
      puts "Clues: " #I think this would work? call feedback method?
      if guess == Computer.display
        puts "Wow good job! You broke the Master Code!"
        break #Stops the upto method if you get the answer correct.
      elsif i >= 12
        print "So close! The answer was:\n "
        print Computer.display
        puts " "
      end
    end
  end
end