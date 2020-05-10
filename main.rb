#This will hold all the `require` files to run the program, and start the game with Game.new.
#Also my to-do list.

=begin
    
*****MASTERMIND*****
PART 1)
    - 12 turns to guess the secret code, starting with you guessing the computer's random code.
        - the computer randomly selects the secret colors and the human player must guess them.
            - Remember that you need to give the proper feedback on how good the guess was each turn!\

PART 2)
    - Refactor my code to allow the human player to choose whether he/she wants to be
     the creator of the secret code or the guesser.
        - Build it out so that the computer will guess if you decide to choose your own secret colors.
            Start by having the computer guess randomly (but keeping the ones that match exactly).
             -Next, add a little bit more intelligence to the computer player so that,
               if the computer has guessed the right color but the wrong position,
                 its next guess will need to include that color somewhere





1. Would need a Computer Class.
    - It would have an array with six numbers to randomize and hold, but can only choose four of the six.
    i.e. random_nums = 4.times.map{ 1 + Random.rand(6) }.to_a 
         print random_nums

    How do I set a color to the number and display it?
        i.e. See below, this works:
class String
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def yellow;         "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
end

one = "1".red
two = "2".green
three = "3".yellow
four = "4".blue
five = "5".magenta
six = "6".cyan

puts "Enter number you want"
guess = gets.chomp.to_s
if guess == "3"  #but this wouldn't work because there's too many combinations for if statements
  puts three
end



end