def factorial(number)
 # Create an array with numbers
 num_array = []
 while number > 0
   num_array.push(number)
   number = number - 1
 end

 # Multiply numbers is array
 print num_array
 answer = num_array[0]
 counter = 1
 while counter < num_array.length
   answer = answer * num_array[ counter ]
   counter = counter  + 1
 end
 print answer
end

factorial(6)