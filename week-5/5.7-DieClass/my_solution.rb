# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides > 0
    	@sides = sides
    else
    	raise ArgumentError, 'Sides must be greater than 0'
    end
  end

  def sides
    p @sides
  end

  def roll
    p rand(1..@sides)
  end
end

stakes = Die.new(8)
stakes.sides
stakes.roll



# 3. Refactored Solution


class Die
  def initialize(sides)
    if sides > 0
      @sides = sides
    else
      raise ArgumentError, 'The die needs more than 0 sides'
    end
  end

  attr_reader :sides

  def roll
    p rand(1..@sides)
  end
end

stakes = Die.new(8)
stakes.sides
stakes.roll




# 4. Reflection

# What is an ArgumentError and why would you use one?
# => Argument error means that the parameter you provided isn't relevant to the method you are calling.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => raise ArgumentError and attr_reader

# What is a Ruby class?
# => A class is a family of methods that can be used on certain types of objects within your program

# What is the difference between a local variable and an instance variable?
# => A local variable does not live outside of the structure in which it was created (e.g. a method or a single program).
# => An instance variable can be called anywhere throughout a program.

# Where can an instance variable be used?
# => Anywhere throughout your code.