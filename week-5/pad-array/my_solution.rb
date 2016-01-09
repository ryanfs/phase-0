# Pad an Array

# I worked on this challenge with: James Boyd

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input?
## the pad method requires three arguments: an array, an integer (which can't be smaller than array.length), and an optional padding object

# What is the output? (i.e. What should the code return?)
## Your newly manipulated array

# What are the steps needed to solve the problem?

# Determine the length of the array
# Compare the length of the array to the minimum size
# If it's equal to or smaller, just return the array

# Else pad it with the third argument until it's big enough

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   length_of_array = array.length
#   if min_size <= length_of_array
#     return array
#   else
#     i = length_of_array
#     while i < min_size
#       array.push(value)
#       i += 1
#     end
#   end
#   return array
# end
#
# def pad(array, min_size, value = nil) #non-destructive
#   length_of_array = array.length
#   result = Array.new
#   if min_size <= length_of_array
#     array.each { |element| result << element }
#     return result
#   else
#     array.each { |element| result << element }
#     i = length_of_array
#     while i < min_size
#       result.push(value)
#       i += 1
#     end
#   end
#
#   return result
# end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 if min_size <= array.length
   return array
 else
   i = array.length
   while i < min_size
     array.push(value)
     i += 1
   end
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 result = Array.new
 if min_size <= array.length
   array.each { |element| result << element }
   return result
 else
   array.each { |element| result << element }
   i = array.length
   while i < min_size
     result.push(value)
     i += 1
   end
 end

 return result
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# We were, our initial pseudocode was very helpful

# Once you had written your pseudocode, were you able to easily translate


# it into code? What difficulties and successes did you have?
#
 # Yes, besides one tricky method, we had almost no problem translating it

# Was your initial solution successful at passing the tests?
# Not quite, 7 of the 9 tests passed, but we were returning half the number of apples that we needed to.

# If so, why do you think that is? If not, what were the errors you encountered
# and what did you do to resolve them?
#  The problem was with the non-destructive method. We were adding the new array elements to the old array and not the new one.



# When you refactored, did you find any existing methods in Ruby to clean up your
# code?
# Not really, we kept the same logic
# How readable is your solution?
## I think it's very easy to understand

# Did you and your pair choose descriptive variable names?
# We sure did!
# What is the difference between destructive and non-destructive methods
# in your own words?
# A destructive method manipulates the original object, while a non destructive method creates and returns a new object