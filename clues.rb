class Clues
    def self.feedback
        #This method doesn't work. There's some edge cases and more.
        matches = $guess_array.map.with_index do |value, index|
        if $master_code[index] == value
            print "#{clue_colors("!")}"
        elsif $master_code.include?(value)
            print "#{clue_colors("?")}"
        else
            nil
        end
        end
    end
end


=begin

guess = [2, 2, 2, 2]
random_nums = [2, 2, 2, 2]

guess.map.with_index do |value, index|
  if random_nums[index] == value
  print  "!"
  random_nums.delete_at(index)
  else
    nil
  end
    guess.map.with_index do |value, index|
      if random_nums[index] == value
        print "?"
      random_nums.delete_at(index)
      else
        nil
      end
    end
end



      guess = [2, 2, 2, 2]
random_nums = [6, 2, 3, 3]

#EXAMPLE:
1. Iterate entirely through each num in guess to see if there are any "!" matches.
  In this case we get: nil, "!", nil, nil.

  Remove the number from random_nums that matched "!".

2. Now we're left with random_nums = [6, 3, 3]
 Iterate entirely through each num in guess to see if there are any "?" matches and REMOVE the number from random_nums once there is a "?" match.
  In this case we:
    Start with 2 in guess, and iterate through guess.
    There is no match.
    This first loop is done.

    Now we go to the next index of guess.
    No more matches here so iterates through guess to the end.

    Results =  "!"


New Numbers (below):

      guess = [2, 2, 1, 2] 
random_nums = [6, 2, 2, 3]

If the random_nums happened to instead be the above, then it would look like:

1. We get: nil, "!", nil, nil.

2. Now we have:
                guess = [2, 2, 1, 2] (stays same)
                random_nums = [6, 2, 3](removed the 2 that matched)

  So now we get, so far: "?"

  and then it turns to: guess = [2, 2, 1, 2] (stays same)
                        random_nums = [6, 3]

  No more numbers included in random_nums that are in guess, so we're left with the anwser of:

              Answer = "!" "?"

    Meaning you had one exact match, and a number that was included but wrong spot.
=end