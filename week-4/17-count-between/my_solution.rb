# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  #find numbers less than or equal to upper bound
  #find numbers greater than or equal to lower bound
  # how many there are
  counter = []
  list_of_integers.each do |num|
    if num >= lower_bound && num <= upper_bound
      counter.push(num)
    else
    end
  end
  return counter.length
end

#count_between([1,2,3,4,5], 2, 4)