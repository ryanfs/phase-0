# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# the input is an integer

# What is the output? (i.e. What should the code return?)
# the code should return a string with commas if appropriate

# What are the steps needed to solve the problem?
# a method that takes in an integer
# if number.length is less than 3, return the number
# else
# convert the integer to a string
# find every third spot in the string
# insert comma
# return string

# 1. Initial Solution

def separate_comma(number)
  number = number.to_s
  if number.length <= 3
    return number
  else
  i = -1
  counter = 0
  while i.abs < number.length - counter
      if i % 3 == 0
        number = number.insert( i - 1 - counter, ',')
        counter += 1
      else
      end
  i -= 1
  end
  return number
  end
end

#2. Refactored Solution
def separate_comma(number)
  number = number.to_s
  if number.length <= 3
    return number
  else
  i = -1
  counter = 0
  length_of_number = (number.length - counter)

  while i.abs < length_of_number
      comma_location = (i - 1 - counter)
      if i % 3 == 0
        number = number.insert(comma_location, ',')
        counter += 1
      else
      end
  i -= 1
  end
  return number
  end
end



# 3. Reflection

# I broke it into one step at a time.
# The pseudocode was effective in setting it up, but writing the block between the while loop was the most complicated part that the pseudocode didn't help with very much.
# I thought about using the each_with_object method, but the way I wrote this, I don't think new methods would help me very much.
# In this case I feel that my refactored solution is only a little bit better than my initial solution.