# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.
# def total(array)
#   sum = 0
#   counter = 0
#   answer = array[0] + array[1]
# end



# 1. total initial solution
def total(array)
  sum = 0
  counter = 0
  while counter < array.length
    sum = sum + array[counter]
    counter += 1
  end
  return sum
end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.




# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution


#tests
puts total([1,2,3])      # => 6
puts total([4.5, 0, -1]) # => 3.5
puts total([-100, 100])  # => 0