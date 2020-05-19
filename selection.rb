# frozen_string_literal: true

class Select
	#Human is Code Breaker
	def computer_set_code
		"...Setting Master Code.\n".each_char { |c| putc c ; sleep 0.10 }
		$master_code = 4.times.map { Random.rand(1..6) }.to_a 
		puts "The Computer has set the Master Code. Try to break it." 
	end

	def self.computer_master_code
		$master_code
	end

	#Human is Code Maker
	def player_set_code
		puts "Type the Master Code, and press 'Enter' to set it."
		$player_master = gets.chomp
		until $player_master =~ /\A[1-6]{4}\z/
		puts 'Your code must only be four digits, using 1 - 6.'
		$player_master = gets.chomp
	end
	$player_master_array = $player_master.split(//).map!(&:to_i)
	"...Storing the Master Code.\n".each_char { |c| putc c ; sleep 0.10 }
end

def self.player_master_code
	$player_master_array 
end