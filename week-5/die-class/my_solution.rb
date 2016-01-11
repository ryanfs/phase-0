# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

die = Die.new(6)

# 3. Refactored Solution







# 4. Reflection

# What is an ArgumentError and why would you use one?
## It's an error that gets raised when you put the wrong type of object into a method. You use one to catch the error and prevent the program from crashing.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
## rand, but it's not new to me. Very few challenges in this one
# What is a Ruby class?
## A way to organize methods and make them available as objects later on.
# Why would you use a Ruby class?
## It makes the code much more readable and allows for the creation of objects.
# What is the difference between a local variable and an instance variable?
## An instance variable is set within the scope of a class, a local variable is set outside of the class.
# Where can an instance variable be used?
## Inside of the class methods