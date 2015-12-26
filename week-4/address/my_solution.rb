# Format an Address

# I worked on this challenge [by myself].


# Your Solution Below

# def get_address
#   puts "Street?"
#   street = gets.chomp
#   puts "City?"
#   city = gets.chomp
#   puts "State?"
#   state = gets.chomp
#   puts "Zip?"
#   zip = (gets.chomp).to_s

# end

def make_address(street, city, state, zip)
  "You live at "+street+', in the beautiful city of '+city+', '+state+'. Your zip is '+zip+'.'
end