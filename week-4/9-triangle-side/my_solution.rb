
# I worked on this challenge [by myself, with Peter L ].


# Your Solution Below

# a + b > c
# a + c > b
# b + c > a

def valid_triangle?(a, b, c)
  a + b > c && a + c > b && b + c > a
end