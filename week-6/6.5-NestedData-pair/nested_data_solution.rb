# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
# pseudocode: array [1[1[2[0]]]]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
#pseudocode: hash[outer:[inner:["almost"[3]]]]
#p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
# pseudocode: nested_data[:array[1[:hash]]]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
#pseudocode:
#output: add 5 to each element within each array
#two nested arrays within the outer array
#iterate over outermost array += 5
#IF is_a?(Array) iterate over array +=5 end
#.map!

number_array.map!{|element|
  if (element.is_a?(Integer))
     element += 5
  else
     element.map!{|number| number +=5}
  end
  }

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
#pseudocode:
#input: nested array of strings
#output: add "ly" to each element within each array
#two nested arrays within the outer array
#iterate over outermost array + "ly"
#IF is_a?(Array) iterate over array + "ly" end
#.map!

# startup_names.map! {|name|
#    if (name.is_a?(String))
#      name + 'ly'
#    else
#      name.map! {|subname| if (subname.is_a?(String))
#        subname + 'ly'
#        else
#         subname.map! {|x| x + "ly"}
#        end
#      }
#    end
#      }
#  end

#REFACTORED BONUS

def startup_namer(names)
  names.map! {|name|
    if (name.is_a?(String))
      name + 'ly'
    else
      startup_namer(name)
    end  
    }

p names

end

startup_namer(startup_names)


#REFLECTIONS
# Q: What are some general rules you can apply to nested arrays?
# => A: I'm not sure what this questions means by a general rules?  I'm going to handle nested arrays in the way that
# => we were led to handle them in this exercise...?  They are what they are?

# Q: What are some ways you can iterate over nested arrays?
# => A: You can build an if/then loop to have cases for individual data types vs collection data types.  A better way I discovered
# => toward the end might be to use recursion.  But maybe there are sleeker loops that can handle nested data types too.
# => But the flow control method of iterating over them isn't very scalable, so it seems like recursion is a slick 
# => best practice.

# Q: Did you find any good new methods to implement or did you re-use one you were already familiar with? 
# What was it and why did you decide that was a good option?
# => A: We used map! because you can't use each destructively.  I used recursion for the first time when refactoring 
# => the bonus challenge.  That was definitely a first for me.





