# frozen_string_literal: true
require_relative 'computer.rb'

class Player
  def player_guess
    1.upto(12) do |i|
      puts "Turn #{i}: Type in four numbers (1 - 6) to guess the code and press 'Enter'."
      #Converts guess to an array of strings, then maps them all to be integers.
      $guess = gets.chomp.split(//).map!(&:to_i) 
      #until guess =~ /\A[1-6]{4}\z/ #Regex needs to be re done to fit an array
      #  puts 'Your guess must only be four digits, using 1 - 6.'
      #  guess = gets.chomp.split(//).map!(&:to_i) 
      #end
      puts " "
      puts Clues.feedback
      if $guess == Computer.display
        puts "Wow good job! You broke the Master Code!"
        break #Stops the upto method if you get the answer correct (before 12 times happen).
      elsif i >= 12
        print "So close! The answer was:\n "
        puts " "
        print Computer.display
        puts " "
      end
    end
  end
end