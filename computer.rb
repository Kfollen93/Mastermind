# frozen_string_literal: true

class Computer
  def randomize # computer selects 4 randoms numbers from 1 - 6
    @random_nums = 4.times.map { Random.rand(1..6) }.to_a
  end

  def computer_code_set
    puts 'The Computer has set the Master Code. Try to break it.'
  end

  # Method providing feedback on how good the guesses were each turn
  def feedback
end
end

x = Computer.new
x.randomize
x.computer_code_set
