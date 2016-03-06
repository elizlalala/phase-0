# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 8
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# => "Screw you guys " + "I'm going home." = cartmans_phrase
#                                           ^
# 6. Why did the interpreter give you this error?
# => because the name of the local variable should have come first
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 183
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# Write your reflection below as a comment.
#                                          ^
# 6. Why did the interpreter give you this error?
# => Because "end" is missing from the while loop. Ruby thinks that we are still defining a function all the way down this page.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 49
# 2. What is the type of error message?
# => Name Error
# 3. What additional information does the interpreter provide about this type of error?
# => in '<main>': undefined local variable or method 'south_park' for main:Object
# 4. Where is the error in the code?
# => in main
# 5. Why did the interpreter give you this error?
# => 'south_park' entered into the program without any default value or definition so Ruby does not know what to do with it

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 64
# 2. What is the type of error message?
# => No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# => in '<main>': undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# => in main
# 5. Why did the interpreter give you this error?
# => With '()' following cartman, Ruby interprets that this is a method.  However, it has no definition for the method.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 79
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => in 'cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# =>  in line 83 where the user includes a variable while calling the method
# 5. Why did the interpreter give you this error?
# => The method was defined without any input parameters. The method is then called with a string argument.  Ruby does not know how to reconcile.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 98
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => in 'cartmans_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => The error is in line 102 where the user does not include a string argument in parentheses when they call the method.
# 5. Why did the interpreter give you this error?
# => Ruby cannot run the method without the needed string parameter provided.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 119
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => in 'cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => The error is in line 123 where the user does not include one of 2 needed string arguments in parentheses when they call the method.
# 5. Why did the interpreter give you this error?
# => Ruby cannot run the method without the needed string parameters provided.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 138
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => in '*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => 138
# 5. Why did the interpreter give you this error?
# => It is looking for another integer to tell it how many times it needs to multiply integer 5.  
# => This error would not occur if the string appeared first and then '* 5'.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 153
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => in '/': divided by 0
# 4. Where is the error in the code?
# => line 153
# 5. Why did the interpreter give you this error?
# => You cannot divide any number by 0 in mathematics, therefore you can't divide by 0 here.  

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 169
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => in 'require_relative': cannot load such file -- /Users/eliz/Desktop/phase-0/week-4/4.4/cartmans_essay.md
# 4. Where is the error in the code?
# => in the filename or path
# 5. Why did the interpreter give you this error?
# => It cannot find the indicated file cartmans_essay.md.  The error would not occur if cartmans_essay.md existed in the working directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
	The most difficult error to resolve was the one with the missing method 'end.'  
	It was most difficult because the line number and error were not directly pointed at the problem.


How did you figure out what the issue with the error was?
	By reading the additional information.  It actually spelled out the problem that the program had ended and it was still expecting
	the work 'end' somewhere.

Were you able to determine why each error message happened based on the code? 
	Yes.

When you encounter errors in your future code, what process will you follow to help you debug?
	Reading the entire error message first is key, because the line number that the error starts with can be misleading as to the
	location of the true error.  After reading the whole error message, I will cross reference to the code, and then resolve as needed.



