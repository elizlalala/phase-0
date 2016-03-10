# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# => An Integer

# What is the output? (i.e. What should the code return?)
# => A String

# What are the steps needed to solve the problem?
# => Convert the integer to a string
# => Count characters
# => Calculate the number of commas needed
# => Store how many characters the final string will be
# => Reverse the string
# => Create a loop to go until the new character count runs out
# => Insert commas at every character index that is divisible by three
# => Reverse string
# => Print the string


# 1. Initial Solution

# def separate_comma(num)
# 	num_w_commas = String.new
# 	num_w_commas = num.to_s
# 	chars = num_w_commas.length #How many characters are in the original number
# 	no_of_commas = (chars-1)/3 #The minus 1 solves the problem of not needing a comma until you have one more numeral than a multiple of 3
# 	chars = chars + no_of_commas #Number of characters the resultant string needs
# 	num_w_commas = num_w_commas.reverse! #We want to work from right to left on the number
# 	n = 1
# 	while n < chars
# 		if n % 4 == 0 #Despite the number of commas being a function of 3, we want the commas to be every 4th character
# 			num_w_commas.insert(n - 1, ',') #The minus one accounts for the 0 index position
# 		end
# 		n += 1
# 	end
# 	num_w_commas = num_w_commas.reverse! #Make the number readable again
# 	p num_w_commas
# end



# 2. Refactored Solution
# What are the steps needed to solve the problem?
# => 


def separate_comma(num)
	thousands = Math.log(num, 1000).to_i
	num_array = []
	until thousands < 0
		num_array << ((num/1000**thousands) % 1000).to_s.rjust(3, '0') #I thought I'd have to abandon my cool math until I discovered rjust!
		thousands -= 1
	end
	num_array[0] = num_array[0].to_i.to_s #After learning about rjust, I used this little trick to make sure there were no 0s in front
	num_w_commas = num_array.join(',')
	p num_w_commas
end

separate_comma(32908493824902)
separate_comma(123)
separate_comma(1000)
separate_comma(100000000)



# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?
>> So I immediately realized that you would either solve this problem by using string character position (or array index 
>> position if you went that route) OR you could use math and powers of 1000.  The former seemed "easier" with the syntax
>> knowledge I had currently, so I shaped my initial solution around it.  And I liked it, but notice that I had to subract 
>> 1 from 3 to keep from counting a comma at the end of the number.  Then you have to use %4 instead of %3 which feels 
>> more instinctive. The index or character position didn't have this real mathematical relationship to WHY a comma 
>> belonged there, so you have to do these +/- 1s and tricks like reversing the string.  Even if you 

>> I didn't love that.  

>> So when it came to the refactor, I just went for it.  I knew that if I could code the comma placement to its true 
>> definition (i.e. revealing to the human eye the powers of 1000 in a number) in the original answer, 
>> then I would have a really crisp solution. This involved a tiny bit of brushing up on logarithmic functions and a 
>> fair amount of syntax research.  But I felt REALLY proud of being able to base a solution around the true definition 
>> of the comma as opposed to forcing it in there.

>> Say you wanted to start passing floats and dollar amounts to this method.  I'm pretty sure that my method would be MUCH 
>> simpler to augment to accomodate decimal formatting than my first position based proof.  That to me is meaningful.

Was your pseudocode effective in helping you build a successful initial solution?
>> Definitely.  If I wasn't figuring out SO much as I went with the refactor solution, it would've been really
>> helpful there as well.

What new Ruby method(s) did you use when refactoring your solution? 
>> Math.log
>> .rjust (My array doesn't know that it's holding digits of a larger number, so I have to fill in zeros to the left)
>> .join (I had encountered this one previously, but this solidified it.)

Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). 
>> Finding .rjust took a little while.  I started in Ruby docs, but I ended up just googling "adding zeroes to front of 
>> number ruby" and looking up the methods that I saw mentioned in stackoverflow solutions.

Did it/they significantly change the way your code works? If so, how?
>> YES.  My entire refactor solution was based on figuring out how to to solve this with the original integer's value
>> as opposed to it's character length.


How did you initially iterate through the data structure?
>> I just itirated through the characters of a string.  
>> When developping a positiong/index based solution, I thought about putting the individual characters into
>> an array, but that seemed unnecessary when I had enough flexibility with string characters.

Do you feel your refactored solution is more readable than your initial solution? Why?
>> My refactored solution is more mathematically advanced, but it is easier to read if you understand the math
>> behind it.  My initial solution is very mathematically simple, but you might struggle to immediately see why
>> I subtract 1 before dividing by 3 or use %4 or flip the string.  Those actions are kind of arbitrary at first
>> glance.
=end




