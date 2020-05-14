class Clues
    def self.feedback
        matches = $guess.map.with_index do |value, index|
        if $random_nums[index] == value
            print "#{clue_colors("!")}"
        elsif $random_nums.include?(value)
            print "#{clue_colors("?")}"
        else
            nil
        end
        end
    end
end