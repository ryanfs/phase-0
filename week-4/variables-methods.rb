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