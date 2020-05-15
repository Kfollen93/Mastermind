# frozen_string_literal: true

#Human is the Code Breaker in this case.
class Computer
  def computer_code_set
    "...Setting Master Code.\n".each_char { |c| putc c ; sleep 0.10; $stdout.flush }
    $random_nums = 4.times.map { Random.rand(1..6) }.to_a 
    puts "The Computer has set the Master Code. Try to break it." 
  end

  def self.master_code
    $random_nums
  end
end