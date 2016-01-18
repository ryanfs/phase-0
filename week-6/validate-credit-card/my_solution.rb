
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself, with: James Boyd for 1.5 hours.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: A 16 digit integer
# Output: boolean value of whether the input is a valid credit card number
# Steps:
# Break input down into an array of the digits
# Make a new variable to stow the new numbers
# Iterate backwards over the array, doubling every other value, and pushing
#   all the values into the stowable variable.
# split all the "doubled" values into two single-digit integers
# Add up all the values in the stowed array
# See if they are divisible by 10.
# Return true if they are divisible by ten.


# origin is the 16 digit integer that gets taken as an argument
# Step 1: throw ArgumentError if num != 16 digits
#make a new array to store the doubled values
# Iterate backwards, double every other number, and push too the storage array

# Step 2: takes what is returned from step one as the argument
# Add up each number in the array

# Step 3: Takes value from Step 2 and see if it's divisible by 10
# Step 3 returns true or false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits



# class CreditCard

#   def initialize(num)
#     # throws ArgumentError if num != 16 digits
#     @origin = num.to_s
#     raise(ArgumentError, "Wrong number of digits") unless @origin.length == 16
#   end

#   def step1
#     @int_array = []
#     @origin.chars.each { |elem| @int_array << elem.to_i }
#     @double_ints = []

#     i = @int_array.length - 1
#     while i >= 0
#       if i % 2 == 0
#         @double_ints.unshift(@int_array[i] * 2)
#       else
#         @double_ints.unshift(@int_array[i])
#       end
#       i -= 1
#     end

#     @double_ints
#   end

#   def step2
#     @add_these_ints = []
#     @double_ints.each do |elem|
#       if elem.to_s.length != 1
#         elem.to_s.split("").each { |int| @add_these_ints << int.to_i }
#       else
#         @add_these_ints << elem
#       end

#     end
#     #p @add_these_ints.inject{|sum,x| sum + x }
#     @sum = @add_these_ints.inject(:+)
#   end

#   def check_card
#     # returns true/false
#     # step1
#     step1
#     step2
#     @sum % 10 == 0
#   end
# end



## Refactored solution
## We're going to spend more time learning to use the each_with_index method because that's what we need in order to refactor this effectively.


class CreditCard

  def initialize(num)
    @origin = num.to_s.split("")
    raise(ArgumentError, "Wrong number of digits") unless @origin.length == 16
  end

  def sum
    @evens = @origin.select.each_with_index { |item, i| i.even? }
    @odds = @origin.select.each_with_index { |item, i| i.odd? }
    @double_evens = @evens.map { |i| i.to_i * 2 }
    @odds.map! { |i| i.to_i }
    @sum = @double_evens.join + @odds.join
    @total_array = @sum.split("")
    @total_array.map! { |i| i.to_i }
    @sum = @total_array.inject { |sum,i| sum + i }
  end

  def check_card
    sum % 10 == 0
  end
end


card = CreditCard.new(4563960122001999)
# p card.step1
# p card.step2
p card.check_card