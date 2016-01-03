
# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

def welcome(address)
  if address.include? "CA"
    "Welcome to California"
  else
    "You should move to California"
  end
end

## Reflection
#I keep putting a "puts" instead of just returning the string which throws a Nil and causes the tests to fail.