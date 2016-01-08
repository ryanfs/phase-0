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