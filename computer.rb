# frozen_string_literal: true

#Human is the Code Breaker in this case.
class Computer
  def computer_code_set
    "...Setting Master Code.\n".each_char { |c| putc c ; sleep 0.10; $stdout.flush }
    @random_nums = 4.times.map { Random.rand(1..6) }.to_a # computer selects 4 randoms numbers from 1 - 6
    puts "The Computer has set the Master Code #{@random_nums}. Try to break it."
  end

  # Method providing feedback on how good the guesses were each turn
  def feedback
  end

  def code_reveal #if code is guessed, reveal and end game. if end of turns reached reveal and end game.
  end
end
