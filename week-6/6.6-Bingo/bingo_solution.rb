# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Input: An array of arrays
# Output: 
# Steps:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #create call method
  #create an instance 2-element array to hold the randomly generated letter and number
  #fill the instance variable with rand(b,i,n,g,o) and rand(1..100)

# Check the called column for the number called.
  #fill an array with [b,i,n,g,o]
  #use the index position of the letter that was generated to run through that index position of each element of the board array
  ##iterate over the outer array and check index position of each

# If the number is in the column, replace with an 'x'
  #use flow control to replace x if there is a match
  #if not, nothing

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #use each to iterate and puts to print each array

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    pick_num = 0
    @pick_letter = String.new
    @bingo = ['b', 'i', 'n', 'g', 'o']
    # @pick_letter = @bingo.sample
    # pick_num = rand(100)
    @pick_letter = 'b'
    pick_num = 83
    p "#{@pick_letter}#{pick_num}"
    puts ""
    @pick_num = pick_num
  end

  def check
    board_transpose = @bingo_board.transpose
    column = board_transpose[@bingo.index(@pick_letter)]
    column[column.index(@pick_num)] = 'X' if column.index(@pick_num) != nil
    @bingo_board = board_transpose.transpose
    puts "Transposed Bingo Board"
    board_transpose.each {|row| p row}
    puts ""
    puts "Updated Board"
    @bingo_board.each {|row| p row}
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game
new_game.call
new_game.check


#Reflection
=begin  
Q: How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
A: Pseudo-coding was difficult, because there wasn't really one order of operations that needed to occur.  You
can slice and dice this challenge in a number of ways.  I kind of had to choose a course of action and stick to it
for the sake of the initial solution.

Q: What are the benefits of using a class for this challenge?
A: There are so many litte commands that you seemingly need to make to check the board for the letter-number call and then
to update the board.  While these commands are not complex, the quantity makes the code very long, very quickly.  So
a class here is a great option to save time and uphold readability.

Q: How can you access coordinates in a nested array?
A: You simply have to reference the index position within the outer array followed by the index position within the inner
array.  However, when the values of the indeces are dynamic (i.e. dependent on the random values being generated) I thought
it was worthwhile to throw in a couple extra variables to help clean up that referencing.

Q: What methods did you use to access and modify the array?
A: I used .index and .transpose heavily in my initial solution.

Q: Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, 
what purpose does it serve, and how is it called?
A: I had never used .transpose before, but it is specifically intended for multidimensional arrays.  Sometimes, it is
logically helpful or mathematically necessary to transpose matrices.  You call it simply by appending .transpose to the
array variable name.  

Q: How did you determine what should be an instance variable versus a local variable?
A: I needed/wanted quite a few variables in the check method.  But they did not need to be referenced anywhere else within
the class, and frankly it would have become very confusing if they were.  So I tried to keep as many extra variables
as I could isolated to this method so that they could stay local.  The board and random selection call were the only instance
variables that I wanted to have.

Q: What do you feel is most improved in your refactored solution?
=end
