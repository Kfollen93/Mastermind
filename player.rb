# frozen_string_literal: true
require_relative 'computer.rb'

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
      if guess == Computer.display #Will this work? this is an array.
        puts "You win!"
      elsif i >= 12
        print "So close! The answer was:\n "
        print Computer.display
        puts " "
      end
    end
  end
end