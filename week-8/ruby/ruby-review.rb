# I worked on this challenge by myself.
# This challenge took me [#] hours.

#takes as its input an Array of integers and returns a fizzbuzzed version of them.

# Pseudocode

# traverse through array, and for each item in array, do the fizzbuzz manipulation to it.

# fizzbuzz: if x % 3 && x % 5 return fizzbuzz
#else if x % 3 return fizz
#else x % 5 return buzz


# Initial Solution

def super_fizzbuzz(array)
  answer = []
  array.each do | num |
    if (num % 3 == 0 ) && (num % 5 == 0 )
      num = 'FizzBuzz'
      answer.push(num)
    elsif (num % 3 == 0 )
      num = 'Fizz'
      answer.push(num)
    elsif (num % 5 == 0 )
      num = 'Buzz'
      answer.push(num)
    else
      answer.push(num)
    end
  end
  return answer
end


# Refactored Solution

def super_fizzbuzz(array)
  array.map! { |n|
    fizz = 'Fizz' if f = (n % 3 == 0)
    buzz = 'Buzz' if b = (n % 5 == 0)
    n = fizz if f
    n = buzz if b
    n = fizz + buzz if (f && b)
    n
  }
end

p super_fizzbuzz([1, 3, 5, 15])


# Reflection

# What concepts did you review or learn in this challenge?
## DRY and using the map method. I banged out the initial fizzbuzz really quickly using the most basic, verbose implementation. Then I spend a long time looking at examples and thinking about ways to do as little repetition as possible.

#What is still confusing to you about Ruby?
## I need to spend more time on classes and doing object oriented programming.

#What are you going to study to get more prepared for Phase 1?
## Main focus is going to be on javascript I think.