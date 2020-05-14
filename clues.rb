class Clues
    def self.feedback
        matches = $guess.map.with_index do |value, index|
        if $random_nums[index] == value
            "!"
        elsif $random_nums.include?(value)
            "?"
        else
            nil
        end
        end
    end
end