# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array containing strings
# Output: The number of sides on the die, a random side, an argument error
# Steps: 
# Initialize the die
## Check that there are more than 0 sides with which to make a die
## Raise argument if there are no sides
## Set input array to an instance variable if it does have contents
# Write method to return the number of sides.  i.e. The length of the array.
# Write method to 'roll the die' and return a random side


# Initial Solution

class Die
  def initialize(labels)
  	if labels.any?
  		@labels = labels
  	else
  		raise ArgumentError, 'The die needs more than 0 sides'
  	end
  end

  attr_reader :labels

  def sides
  	return @labels.count
  end

  def roll
  	return @labels.sample
  end
end



# Refactored Solution

class Die
  def initialize(labels)
  	if labels.any?
  		@labels = labels
  	else
  		raise ArgumentError, 'The die needs more than 0 sides'
  	end
  end

  attr_reader :labels

  def sides
  	return @labels.count
  end

  def roll
  	return @labels.sample
  end
end



# Reflection

# Q: What were the main differences between this die class and the last one you created in terms of implementation? 
# Did you need to change much logic to get this to work?
# => A: There was no change to logic persay despite the base level input of the class being changed from integer to array.
# => The mehods used within each method definition were different because the basic input is an array, and
# => not a integer as it was in the previous exercise.  I used .any? to check for 0 sides, .count to expose the number of
# => sides, and .sample to roll.  

# Q: What does this exercise teach you about making code that is easily changeable or modifiable? 
# => A: Despite the input data types being different, having a really simple layout for Die Class 1 made it really easy
# => to adjust its code to accomodate an array.

# Q: What new methods did you learn when working on this challenge, if any?
# => A: I think this is the first time I've used .any? but I've used all others before.

# Q: What concepts about classes were you able to solidify in this challenge?
# => A: This didn't solidify any concepts, but it was good practice in syntax.



