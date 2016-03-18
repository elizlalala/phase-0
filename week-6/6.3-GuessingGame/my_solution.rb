# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    unless answer.is_a? (Integer)
    	raise ArgumentError.new("#{answer} is not a valid integer.")
    end
    @answer = answer
    p @answer 
  end

  def guess(num)
    # if solved? == true
    #   puts "You aleady guessed the correct answer #{@last_guess}" 
    # else
      @last_guess = num
      # puts @last_guess
      solved?
      if @last_guess > @answer
        puts "Please guess again. #{@last_guess} is too #{:high}."
        return :high
      elsif @last_guess < @answer
        puts "Please guess again. #{@last_guess} is too #{:low}."
        return :low
    	else
        puts "Yay! You win!"
        return :correct
    	end
    # end
  end

  def solved?
    @last_guess == @answer
  end
end

# hi = GuessingGame.new(31)
# hi.guess(10)
# puts hi.solved?
# hi.guess(51)
# puts hi.solved?
# hi.guess(25)
# puts hi.solved?
# hi.guess(31)
# puts hi.solved?
# hi.guess(5)
# puts hi.solved?


# Refactored Solution






# Reflection
=begin
Q: How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
A: 


Q: When should you use instance variables? What do they do for you?
A: Good question.  I struggled getting my guess method to work because I was initially making last_guess @last_guess
because I wanted to use it in solved?.  

Q: Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
A: The first place I struggled with it was in the solved? method.  I kept trying to use 'false unless condition' or 
'true if condition.'  This returned nil in the non explicit case.  I finally realized that I was essentially telling it
  'false unless true' and 'true if true' which is a weird thing to ask.  So I just put the condition I wanted to check 
  for instead of a consitional abbreviated flow control.



Q: Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  
=end




