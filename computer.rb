# frozen_string_literal: true

#Human is the Code Breaker in this case.
class Computer
  def computer_code_set
    "...Setting Master Code.\n".each_char { |c| putc c ; sleep 0.10; $stdout.flush }
    @@random_nums = 4.times.map { Random.rand(1..6) }.to_a 
    puts "The Computer has set the Master Code. Try to break it." 
  end

  def self.display
    @@master_comp_code = @@random_nums*"" #Asterik and quotes changes array to String with no spaces.
    @@master_comp_code #however, I'll prob need to keep this as an array to check each num.
  end
end