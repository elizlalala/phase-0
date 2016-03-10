# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?  an array of strings, integers, anything
# What is the output? (i.e. What should the code return?)  
# => an array of whatever value occurs the most in the original array

# What are the steps needed to solve the problem?
# => Create a new, empty hash
# => Itirate over original array to load hash with array element as the key and the count of each element as the value
# => Hash is loaded with element and element count
# => Create a new mode_array
# => Use the maximum value method on the hash
# => Find all keys that have that maximum value
# => Load max value keys into a new array


# 1. Initial Solution

def mode(array)
	mode_hash = Hash.new
	array.each {|k| 
		mode_hash[k] = array.count(k)
	}
	mode_array = []
	mode_hash.each {|key, value| 
		if value == mode_hash.values.max
			mode_array << key
		end
	}
	p mode_array
end

mode([1,1,2,2,5,4,3])




# 3. Refactored Solution

def mode(array)
	mode_hash = Hash.new
	array.each {|k| 
		mode_hash[k] = array.count(k)
	}
	mode_array = []
	mode_hash.each {|key, value| 
		if value == mode_hash.values.max
			mode_array << key
		end
	}
	p mode_array
end




# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# => We used a hash to move between the original array and the output array.
# => It was easy to load a hash with a unique set of the original array's elements and the count of each's occurence
# => in that original array.  Once we had the hash loaded this way, we knew we would be able to find
# => a method that would easily expose the highest value in the hash, and we just needed to print the 
# => associated keys to a new out put array.  This method saved us any concern over whether or not any 
# => of the original elements even occured more than once.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# => Pseudocoding was key for my pair and me in this challenge.
# => We initially thought that it would be a difficult program, but once we pseudocoded the steps,
# => We realized we had a really good arsenal of methods to complete the steps we needed to complete.

# What issues/successes did you run into when translating your pseudocode to code?
# => The only thing we needed to move from pseudocode to our code were the correct methods.  
# => We had .count and .values.max in mind, but we double checked that these would work as desired.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? 
# Were they difficult to implement?
# => I think we actually lucked out with our initial thoughts on methods we wanted to use.
# => During refactoring, we searched for a combination of enumerables and .to_h and .to_a that would accomplish this
# => task in fewer lines of code.  But our research didn't seem to be quickly uncovering that wouldn't bog down
# => our code with complexity.  Our code was short and clean enough that we didn't like the idea of 
# => making it more complex for the sake of fewer lines.





