#Release 1: Summarize Questions
##What does puts do?

*Puts* is a method that converts the following argument to a string, appends a line break, and displays or outputs it as text on the screen.  Puts does not return any value or add any information to your code beyond this screen output.

##What is an integer? What is a float?

*Integer* 
Numbers without any decimal points. Used much more widely across computer programs.

*Float*
Numbers with decimal points.  Most commonly used in academic [experimentation] programs and 3D graphics.  


##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

*Float Division*
This is your standard numerical calculator division.  Both numerator and divisor should be of the float type (despite whether they are whole values or not) to produce a float quotient.  

*Integer Division*
Integer division will return another integer no matter what.  That integer is the quotient rounded down to the nearest whole number.  This type of division is useful in the context of dividing groups of objects where the objects themselves cannot be effectively partitioned.  if you have 5 quarters, and the washing machine costs 1 dollar's worth of quarters to operate, you can't do 1.25 loads of laundry.  You can only do 1 because it's 1 dollar or bust.


#Release 2: Try It! Code
##How many hours are in a year?  How many minutes are in one decade?

puts "There are " + (24*365).to_s + " hours in one year."
puts "There are " + (60*24*(365*8 + 366*2)).to_s + " minutes in one decade."


#Reflections
##How does Ruby handle addition, subtraction, multiplication, and division of numbers?


##What is the difference between integers and floats?

*Integer* 
Numbers without any decimal points. Used much more widely across computer programs.

*Float*
Numbers with decimal points.  Most commonly used in academic [experimentation] programs and 3D graphics.

##What is the difference between integer and float division?

*Float Division*
This is your standard numerical calculator division.  Both numerator and divisor should be of the float type (despite whether they are whole values or not) to produce a float quotient.  

*Integer Division*
Integer division will return another integer no matter what.  That integer is the quotient rounded down to the nearest whole number.  This type of division is useful in the context of dividing groups of objects where the objects themselves cannot be effectively partitioned.  if you have 5 quarters, and the washing machine costs 1 dollar's worth of quarters to operate, you can't do 1.25 loads of laundry.  You can only do 1 because it's 1 dollar or bust.

##What are strings? Why and when would you use them?

*Strings* are groups of text in a program.  The text in a string can contain any alphanumeric, punctuation, or special character that you can type.  Strings are used most often in interactive programs where the user is going to need to input information to a program or read output information.

##What are local variables? Why and when would you use them?

*Local Variables* have meaning within the construct that they are defined.  Constructs include but are not limited to loops, methods, classes, or an entire programs.  Local variables must be declared (or initialized) within their intended construct before you start putting them to work.  Local variables in more granular constructs will not affect local variables of the same name in a more general construct.

##How was this challenge? Did you get a good review of some of the basics?

This challenge was a good warm up back into Ruby and a snapshot of rspec.  While I knew how to use all of these elements before, I definitely learned more about the full definitions and behaviors of these elements through the readings.  I liked researching local variables a bit and ended up getting a clear distinction amongst local variables, global variables, instance variables, class variables, and constants.


