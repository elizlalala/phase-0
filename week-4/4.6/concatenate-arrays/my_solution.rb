# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  newArray = []
  n = 0
  array_1.each do |x|
    newArray[n] = x
    n = n + 1
  end
  array_2.each do |x|
    newArray[n] = x
    n = n + 1
  end
  p newArray
end