# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode




# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #'call' method to generate letter rand('b', 'i','ngo) and a rand(1..100) return [B, 24]

# Check the called column for the number called.
  # method that takes the called array, checks it against your board
  # a.each do { |num| if num == call[1] then return it}

# If the number is in the column, replace with an 'x'
  # if there is a match, replace the number with 'x'
  # my_board = []
  # x = called number
  # a.select {|i| i == x }.each {|i| i << "!" }

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = [:B, :I, :N, :G, :O]
    letter_position = rand(0..4)
    @letter_position = letter_position
    number = rand(1..100)
    call = []
    call.push(letter[letter_position])
    call.push(number)
    @call = call
  end

  def check()
    board = @bingo_board
    board_num = @call[1]
    your_num = board[@letter_position]
    rows = board.length
    i = 0
    while i < rows
      your_num = board[i][@letter_position]
      if board_num != your_num
        'nothing'
      else
        p "MATCH!!"
        board[i][@letter_position] = "X"
      end
      i += 1
    end
    return board
  end
  def display(board)
    return board
  end
end


  # def horizontal_win
  #   right_to_left = []
  #   left_to_right = []

  #   left = 0
  #   right = 4
  #   @bingo_board.each do |row|
  #     if row.uniq.join("") == "X"
  #     right_to_left << row[left]
  #     left_to_right << row[right]
  #     left += 1
  #     right -= 1
  #     end
  #   if right_to_left.uniq.join("") == "X"
  #   end
  #   if left_to_right.uniq.join("") == "X"
  #   end
  # end


# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

winner_board = ['X', 'X', 'X', 'X', 'X']


until board.any? {|array| array == winner_board} #|| (vertical condition)
  new_game = BingoBoard.new(board)
  p new_game.call()
  new_board = new_game.check()
  p new_game.display(new_board)
end
p 'BINGO!'



#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
## The pseudocode made sense for the methods, but I didn't quite account for the driver code off the bat.

# What are the benefits of using a class for this challenge?
## Using a class allows for the board to be mutible and to save its state, letting us play multiple rounds of bingo

# How can you access coordinates in a nested array?
## Using their index

# What methods did you use to access and modify the array?
## .any,

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
## learned the .any method and got more familiar with the each_with_index method

# How did you determine what should be an instance variable versus a local variable?
## Depending on the scope

# What do you feel is most improved in your refactored solution?
## Haven't gotten to it yet