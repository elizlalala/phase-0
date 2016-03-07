=begin I know your whole name
=end

# puts 'What is your first name?'

# firstName = gets.chomp

# puts 'What is your last name?'

# lastName = gets.chomp

# puts 'What is your middle name?'

# middleName = gets.chomp

# puts 'So you\'re the ' + firstName + ' ' + middleName + ' ' + lastName + ' ' + 'everyone\'s been talking about around here!!'

=begin what does puts return
=end

# returnVal = puts 'This puts returned:'
# puts returnVal

=begin english number
=end

# def englishNumber number

# 	if (number > 100) OR (number < 0)
# 		"Please enter a number 0-100"
# 	end

# 	numString = ''

# 	left = number
# 	write = number/100 #write either equals 0 or 1
# 	left = left - write*100 #at this point left is either 0 or its original self

# 	if write = 1
# 		puts "One Hundred"
# 	end
# end

=begin hours in a year	and minutes in a decade
=end

# puts "There are " + (24*365).to_s + " hours in one year."
# puts "There are " + (60*24*(365*8 + 366*2)).to_s + " minutes in one decade."

# def over_b?(exp, budge)
# 	total_spent = 0.00
# 	exp.each do |bill|
# 		total_spent += bill
# 	end
# 	total_spent > budge
# end

# puts (over_b?([20,5],24) && over_b?([20,3],24))

# puts over_b?([20,5],24)

# puts over_b?([20,3],24)

# def number_selector(list)
# 	p new_list = list.collect {|num| num % 2 == 0 || num % 3 == 0}
# end

# number_selector([1,2,3,4,6,9,15,23])

def sum(a,b)
	sum = a + b
end

puts sum(5,6)




