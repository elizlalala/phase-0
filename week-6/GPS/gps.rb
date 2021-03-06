# Your Names
# 1) Lisa Dannewitz
# 2) Elizabeth Brown 

# We spent [#] hours on this challenge.

#Input: string, integer 
#Output: string
#Steps to Complete:
# Create a hash with possible baked goods and the humber of possible ingredients
# Simplify error throwing process
## Check if the input baked good exists in the library of items -- use has_key?
## Call an error if the input 
# Change method used in serving size calculation
# Add something to do with remaining ingredients --- "ADD this feature"

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  
  cake = 0
  cookie = 0
  if remaining_ingredients > 4
    cake = 1
    remaining_ingredients -= 5
  end
  cookie = remaining_ingredients

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{cookie} cookies and #{cake} cakes"
  end
end

# p serving_size_calc("pie", 15)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
p serving_size_calc("cake", 12)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# => Making code readable goes beyond comments and indentation.  It extends to the methods and loops
# => that you choose to accomplish the intended task.  While the original code worked, it was so far
# => from the most intuitive way to accomplish the tasks at hand.  Following standard best practices
# => and intuitive coding patterns makes it easier for someone to contribute later.  I guess if you 
# => wanted to hide the function of your program, you could learn to choose the most unintuitive 
# => approaches possible.  An artform all on it's own I suppose! :P

# Did you learn any new methods? What did you learn about them?
# => I had never implemented .has_key? before.  Also, I had never used ArgumentError.new syntax to use
# => dynamic placeholders in the string.

# What did you learn about accessing data in hashes? 
# => The only thing I kind of learned about accessing data in hashes was that we saved library[item_to_make] to serving_size
# => even though it wasn't necessary.  Probably shouldn't make this a habit, but "serving_size" is much more
# => readable in later operations than library[item_to_make].  If the syntax hash[key] doesn't describe the value
# => extremely well, and it is going to be used again and again in more complicated lines of code, this could
# => be a good practice to adopt.  Downside of this is that it bogs your program down with unnecessary variables though.

# What concepts were solidified when working through this challenge?
# => I liked our use of "unless" here.  It seems like a simple command, but it actually throws me off when I
# => consider using it.  So I liked solidifying that it is just the equivalent of "if not".

