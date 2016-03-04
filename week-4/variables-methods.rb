# Full name greeting: 
#Write a program that asks for a person's first name, 
#then middle, then last. 
#Finally, it should greet the person using their full name.

puts 'What is your first name?'

firstName = gets.chomp.capitalize

puts 'What is your last name?'

lastName = gets.chomp.capitalize

puts 'What is your middle name?'

middleName = gets.chomp.capitalize

puts 'So you\'re the ' + firstName + ' ' + middleName + ' ' + lastName + ' ' + 'everyone\'s been talking about around here!'


# Bigger, better favorite number: 
#Write a program that asks for a person's favorite number. 
#Have your program add 1 to the number, 
#and then suggest the result as a bigger and better number.

puts 'What is your favorite number?'

faveNumber = Integer(gets.chomp)
faveNumber = faveNumber + 1

puts 'Hmm, I suggest changing your favorite number to ' + faveNumber.to_s + ' because it is a much bigger and better favorite number.'

=begin
	
How do you define a local variable?

Local Variables have meaning within the construct that they are defined. 
Constructs include but are not limited to loops, methods, classes, or an entire programs. 
Local variables must be declared (or initialized) within 
their intended construct before you start putting them to work. 
Local variables in more granular constructs will not affect local variables 
of the same name in a more general construct.

How do you define a method?

Methods execute a defined set of actions that can be called upon 
again and again throughout your program using a bit of assigned text.  
Some methods have a required set of parameters that must be given 
when the method is called.

What is the difference between a local variable and a method?

A local variable stores a piece inforamtion.  
A method stores and performs actions.

How do you run a ruby program from the command line?

Type in: ruby <filename>

How do you run an RSpec file from the command line?

Type in: rb <filename>

What was confusing about this material? What made sense?

The trickiest thing was toggling between integers and strings in the favorite number method.
	
=end