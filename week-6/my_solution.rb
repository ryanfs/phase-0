# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array
# Output: One item inside of the array
# Steps:
# Initialization makes the array available
# Makes the number of sides available
# Rise that Argument error if there are 0 sides in the die

# Sides method returns labels.count

# Roll method will pick a random index from the array


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.count
    if @sides == 0
      raise ArgumentError
    end
  end

  def sides
    return @sides
  end

  def roll
    roll = rand(0..(@sides - 1))
    return @labels[roll]
  end
end

# die = Die.new(['A','B'])

# puts die.roll()
# Refactored Solution

# Not sure how to refactor this to make it more readable.






# Reflection

#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
## The main difference is that I had to count the number of sides in this one, where as last time we just passed an integer saying the number of sides.

#What does this exercise teach you about making code that is easily changeable or modifiable?
## This Die class could take any sort of die, where the last one can only take integers.

#What new methods did you learn when working on this challenge, if any?
## None

#What concepts about classes were you able to solidify in this challenge?
## Making variables available in other class methods with a @