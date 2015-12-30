
# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 171
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says it that there is an unexpected end of input, and that it was expecting the keyword 'end' 
# 5. Where is the error in the code?
# line 17
# 6. Why did the interpreter give you this error?
# Because we didn't close out the while loop 

# --- error -------------------------------------------------------

south_park = 1 

# 1. What is the line number where the error occurs?
# 37
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# gives the name of the variable or method
# 4. Where is the error in the code?
# line 37
# 5. Why did the interpreter give you this error?
# We don't assign that variable to anything

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# undefined method (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# gives the name of the method
# 4. Where is the error in the code?
# before 52 when we never define the method
# 5. Why did the interpreter give you this error?
# we should have defined the method before calling it 

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# 71
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0) so 1 argument was passed, but it expects 0 
# 4. Where is the error in the code?
# In line 71 we pass an argument that the method isn't built to handle 
# 5. Why did the interpreter give you this error?
# Because we shouldn't have an argument when we call the method 

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('I hate you kyle')

# 1. What is the line number where the error occurs?
# 90
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1) it expected 1 argument but we passed 0 arguments
# 4. Where is the error in the code?
# Line 90 we should have passed an argument
# 5. Why did the interpreter give you this error?
# Because we didn't pass an argument when calling the method 



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'ryan')

# 1. What is the line number where the error occurs?
# 111
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2) it expects 2 arguments, we only passed one
# 4. Where is the error in the code?
# 111, we should have passed a second argument 
# 5. Why did the interpreter give you this error?
# because we only passed one argument 

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 126 - you can't multiply an integer by a string
# 5. Why did the interpreter give you this error?
# Because you're trying to manipulate incompatable data 

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# We divided by 0
# 4. Where is the error in the code?
# 20/0
# 5. Why did the interpreter give you this error?
# Because when you divide by 0 it throws an error 

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- path to file
# 4. Where is the error in the code?
# We tried loading a markdown file that doesn't exist 
# 5. Why did the interpreter give you this error?
# Because we tried to load the file but it's not there 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read: the TypeError, but now I understand them 
# How did you figure out what hte issue with the error was: it was pretty obvious, but it's good to see obvious code next to a cryptic error so next time I understand the problem more quickly 
# Were you able to determine why each error message happened based on the code: yes, very quickly 
# When you encounter errors in your future code, what process will follow to help you debug: Look at the line number, read the error, understand what it's trying to act on, and look at the code to see how to fix it. 