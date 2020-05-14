=begin
I need to convert guess = gets.chomp to an array in player.rb
Then I need to change back @@random_nums to leave that as an array (how it originally was) in computer.rb

def clues
    guess = [1, 2, 3, 4]
    master = [4, 2, 3, 6]

    matches = guess.map.with_index do |value, index|
    if master[index] == value
        "!"
    elsif master.include?(value)
        "?"
    else
        nil
    end
    end
end

=end