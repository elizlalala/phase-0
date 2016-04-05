# OO Basics: Student




	# I worked on this challenge [by myself].
	# This challenge took me [#] hours.




	# Pseudocode






	# Initial Solution


	class Student
	  attr_accessor :scores, :first_name, :letter_grade

	  def initialize(first_name, scores)   #Use named arguments!
	    @first_name = first_name
	    @scores = scores
	  end

	  def average 
	  	i = 0
	  	sum = 0
	  	@scores.each {|num| 
	  		sum += num
	  		i += 1
	  	}
	  	@average = sum / @scores.count
	  	letter_grade
	  	return @average
	  end

	  def letter_grade
	  	if @average >= 90
	  		@letter_grade = 'A'
	  	elsif @average >= 80
	  		@letter_grade = 'B'
	  	elsif @average >= 70
	  		@letter_grade = 'C'
	  	elsif @average >= 60
	  		@letter_grade = 'D'
	  	else
	  		@letter_grade = 'F'
	  	end
	  end


	end


	students = []
	students << Student.new("Alex", [100, 100, 100, 0, 100])
	students << Student.new("Elizabeth", [100, 100, 100, 0, 100])
	students << Student.new("Maggie", [100, 100, 100, 0, 100])
	students << Student.new("Rob", [100, 100, 100, 0, 100])
	students << Student.new("Jeff", [100, 100, 100, 0, 100])

	def linear_search(array, name)
		i = 0
		while i < array.length 
			return i if array[i].first_name == name
			i += 1
			return -1 if i == array.length
		end
	end

	def binary_search(array, name)
		# sorted = array.sort_students
		sorted = []
		sorted = array.sort { |x, y| x.first_name <=> y.first_name}
		return 1 if array[sorted.length / 2 - 1].first_name == name
		if array[sorted.length / 2 - 1].first_name < name
			sorted.drop!(sorted.length / 2 - 1)
			return sorted 
			# return -1 if sorted == []
			# binary_search(sorted, name)
		else
			sorted.drop_while(sorted.length / 2 - 1)
			return sorted
			# return -1 if sorted == []
			# binary_search(sorted, name)
		end
		# return -1 if sorted == []
		# binary_search(sorted, name)	
	end
		

	def sort_students(array)
		sorted = []
		sorted = array.sort { |x, y| x.first_name <=> y.first_name}
		return sorted
	end


	# Refactored Solution




	p binary_search(students, "Alex")







	# DRIVER TESTS GO BELOW THIS LINE
	# Initial Tests:


	# p students[0].first_name == "Alex"
	# p students[0].scores.length == 5
	# p students[0].scores[0] == students[0].scores[4]
	# p students[0].scores[3] == 0




	# # Additional Tests 1:


	# p students[0].average == 80
	# p students[0].letter_grade == 'B'


	# # Additional Tests 2:


	# p linear_search(students, "Alex") == 0
	# p linear_search(students, "NOT A STUDENT") == -1










	# Reflection
