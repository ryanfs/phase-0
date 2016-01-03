# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # make hash with word and its length
  word_hash = {}
  list_of_words.each do |word|
  word_length = word.length
  word_hash[word] = word_length
  end
  answer = word_hash.max_by{|k,v| v}
  if answer == nil
    return nil
  else
    answer.first
  end
  # return the key of the biggest value
  # handle all of their if else scenarios
end