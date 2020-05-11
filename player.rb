class Player
    def player_guess
        1.upto(12) do |i|
            puts "Turn #{i}: Type in four numbers (1 - 6) to guess the code and press 'Enter'."
            guess = gets.chomp
            while guess.size != 4 #This doesn't work entirely, can still enter characters.
                puts "Your guess must only be four digits, using 1 - 6."
                guess = gets.chomp
            end
        end
    end
end

x = Player.new.player_guess