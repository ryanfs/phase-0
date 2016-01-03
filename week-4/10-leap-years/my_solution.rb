# Leap Years

# I worked on this challenge [with Peter L ].

# Divisible by 4
# Not divisible by 100
# However, years that are divisible by 400 work

# Your Solution Below
def leap_year?(year)
  (year % 4 == 0) && (year % 100 != 0) || (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
end
