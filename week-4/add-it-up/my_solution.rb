# Add it up!


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.

=begin
define the method
input will be a single array
input.each do |num|
create a new variable to add all of the nums
p the new variable
=end


# 1. total initial solution

def total(num_array)
	sum = 0
	num_array.each do |num|
		sum = sum + num
	end
	p sum
end

total([2,3,4])






# 3. total refactored solution

def total(num_array)
	sum = num_array.inject(0) {|sum,x| sum + x }
	p sum
end

total([2,3,4])



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution


