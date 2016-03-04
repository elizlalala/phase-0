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
