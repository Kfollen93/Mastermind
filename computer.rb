# frozen_string_literal: true

#This file should have a new name, something like "selection", to choose whether maker or breaker.
#The class should also be named "Select".
#Rename methods more clearly for when it's player or computer related.
class Computer
  def computer_code_set #Rename computer_set_code
    "...Setting Master Code.\n".each_char { |c| putc c ; sleep 0.10; $stdout.flush }
    $master_code = 4.times.map { Random.rand(1..6) }.to_a 
    puts "The Computer has set the Master Code. Try to break it." 
  end

  def self.master_code #Rename, computer_master_code
    $master_code
  end

  def player_set_code
end