#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	def initialize
    	@name = 'Elizabeth Brown'
  	end
end


class Greetings

	def initialize
    	@name = NameData.new
  	end

	def hello
		puts "Howdy #{@name}!"
  	end
end



# Reflection
=begin

Release 1:
Q: What are these methods doing?
A: They help the user maintain a directory of individuals.  The methods enable you to recall or modify the contents of the directory.

Q: How are they modifying or returning the value of instance variables?
A: They modify or return the value of the instance variables via an explicitly defined method on command by the user.

Release 2:
Q: What changed between the last release and this release?
A: This release replaced the 
==> what_is_age 
method syntax with the 
=> attr_reader :age
syntax.  They accomplish the exact same task of printing the profile's @age, but the attr_reader syntax is more concise.

Q: What was replaced?
A: See previous answer.

Q: Is this code simpler than the last?
A: Yes. It replaces 3 lines with one readable command that accomplishes the exact same thing.

Release 3:
Q: What changed between the last release and this release?
A: This release replaced the 
==> change_my_age 
method syntax with the 
=> attr_writer :age
syntax.  They accomplish the exact same task of reassigning the value the profile's @age, but the attr_writer syntax is more concise.

Q: What was replaced?
A: See previous answer.

Q: Is this code simpler than the last?
A: Yes. It replaces 3 lines with one readable command that accomplishes the exact same thing.

Release 4:
class Profile
  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
end

Release 5:
see code above

Reflections:
Q: What is a reader method?
A: The reader method prints the value currently stored in the instance variable to the console.

Q: What is a writer method?
A: The writer method allows you to change the value currently stored to an instance variable.

Q: What do the attr methods do for you?
A: They save space and simplify your code.

Q: Should you always use an accessor to cover your bases? Why or why not?
A: No.  You will not always want users to have write access to your variables.  You may not want them
to see current values in variables.

Q: What is confusing to you about these methods?
A: These methods aren't confusing.  Especially when WGR showed that they are literally just a shell call to 
the basic read/write methods that you would write out yourself.
=end