# Your Names
# 1) Ryan Salerno
# 2) Tim Beck

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# handle the case where you pass an item that isn't in the library

# do something with the leftover ingredients
# turn all leftovers into cookies


def serving_size_calc(item_to_make, your_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter -= 1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = your_ingredients % serving_size

  if your_ingredients < serving_size
    p "You don't have enough ingredients to make #{item_to_make}, how about #{your_ingredients} cookies?"
  end

  plates = your_ingredients / serving_size
  if plates > 1
    item_to_make = item_to_make + 's'
  end


  if remaining_ingredients == 0
    "Make #{plates} #{item_to_make}"
  elsif remaining_ingredients == 1
    "Make #{plates} #{item_to_make} and 1 cookie"
  elsif remaining_ingredients > 1
    "Make #{plates} #{item_to_make} and #{remaining_ingredients} cookies"
  elsif remaining_ingredients % 5 == 0
    "Make #{plates} #{item_to_make} and #{remaining_ingredients / 5} cakes"
  elsif remaining_ingredients % 7 == 0
    "Make #{plates} #{item_to_make} and #{remaining_ingredients / 7} pie"
  end
end

p serving_size_calc('pie', 15)
p serving_size_calc('pie', 4)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection