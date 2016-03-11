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







# 4. Reflection