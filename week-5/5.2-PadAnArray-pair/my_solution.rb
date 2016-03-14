# Pad an Array

# I worked on this challenge [with: Riley Scheid]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# array, min_size, and default of nil or something else.
# What is the output? (i.e. What should the code return?)
# for pad! the output is the same, modified array.
# for pad it is a new array, leaving the old array unchanged.
# What are the steps needed to solve the problem?
# pad!
# 1. conditional if for =< array size, return array.
# 2. if min_size is greater than array.length push value
# on to array.


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
  	return array
  else
  	(min_size - array.length).times do
  		array << value
  	end
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.concat(array)
  if min_size <= array.length
    return new_array
   else
   	(min_size - array.length).times do
    new_array << value
  end
  return new_array
  end
end


# 3. Refactored Solution



# 4. Reflection
=begin
Q: Were you successful in breaking the problem down into small steps?
A: Yes. I believe that we were successful in this easily.

Q: Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?
A: Yes, I think that it was hard for us to not start coding in our pseudo code.  So we were definitely ready to translate to code.

Q: Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?
A: Our initial solution minus a couple cosmetic errors was successful.

Q: When you refactored, did you find any existing methods in Ruby to clean up your code?
A: Not really.  Our code was pretty clean and simple.  We didn't feel the need to mess with it too much.

Q: How readable is your solution? Did you and your pair choose descriptive variable names?
A: I think it's really straightforward and easy to read.

What is the difference between destructive and non-destructive methods in your own words?
A: Destructive methods changes the data stored in existing variables.  Non destructive creates a new variable for
the changed data.  

=end