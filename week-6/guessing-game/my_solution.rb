# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: Int, which is the answer
# Output: True
# Steps: If guess > answer, return :high, keep playing
#If guess < answer, return low, keep playing
# If guess == answer, return 'you did it!'

# GuessingGame#solved? true if the last guess was right, else false


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end

# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"


# Refactored Solution

# I really don't know how to refactor this, it's so simple. Any suggestions?




# Reflection

#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
## Instance variables and methods make up the parts of a real world object and give them their actions.

#When should you use instance variables? What do they do for you?
## You should use an instance variable when you need to store data just within the class object.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
## Didn't have very much trouble with it, in this case we initially pass an answer, the user puts in a number, we compare them until they are the same.

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
## Using symbols not only saves time when doing comparisons, but also saves memory, because they are only stored once.