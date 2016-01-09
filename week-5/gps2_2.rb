# Method to create a list
items = 'carrots apples cereal pizza'


def grocery_list(items)
  list = Hash.new(1)
  array_of_items = items.split
  #puts array_of_items
  array_of_items.each do |item|
  list[item] = 1
  end
  list
end

list = grocery_list(items)

def add_item(item, quantity, hash)
  list = Hash.new
  list[item] = quantity
  hash.merge!(list)
  return hash
end

#p add_item('apples', 12, list)

def remove_item(item, hash)
 hash.delete(item)
 return hash
end

# remove_item('apples', list)

def quantity_item(item, quantity, hash)
  list = Hash.new
  list[item] = quantity
  hash.merge!(list)
  return hash
end

#p quantity_item('apples', 1, list)

def print_list(hash)
 puts "Grocery List"
 hash.each do |item|
  puts item
end
end
print_list(list)
# Method to print a list and make it look pretty
# input:
# steps:
# output:

# What did you learn about pseudocode from working on this challenge?
## I learned to think through my problem and lay the solution out step by step.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
## Arrays don't let you capture a value, so we had to use a hash.
# What does a method return?
## A method returns an object that is what comes from how you manipulated it.
# What kind of things can you pass into methods as arguments?
## You can pass any type of object - string, int, array, hash, etc
# How can you pass information between methods?
## You return the object from a method, and then pass the first method as an argument into the second.
# What concepts were solidified in this challenge, and what concepts are still confusing?
## Manipulating the value of a hash is still confusing for me.