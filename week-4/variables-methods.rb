#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts 'What is your favorite number?'
fav_num = gets.chomp
bigger_num = (fav_num.to_i + 1).to_s
puts 'Well this number is bigger and better: '+bigger_num

#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.


puts 'What is your first name?'
first_name = gets.chomp

puts 'What is your middle name?'
middle_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

puts 'Hello there '+first_name+' '+middle_name+' '+last_name+'.'

# # How do you define a local variable?
#  - A local variable is within the scope of amethod

# # How do you define a method?
#   - A method is a function in your code that does something (usually to objects)
# # What is the difference between a local variable and a method?
#   - A local variable is an object inside of your method, and the method is what happens to that object.
# # How do you run a ruby program from the command line?
#   - You use the 'ruby' compiler, so you type: ruby filename.rb
# # How do you run an RSpec file from the command line?
#   - You type: rspec test.rb
# # What was confusing about this material? What made sense?
#   - This was mostly review for me.