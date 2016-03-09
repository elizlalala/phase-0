# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a grocery list hash with items as keys and quantities as values
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def grocery_list(items)
  items_array = items.split(' ')
  
  # items_array.each_with_object(Hash.new(0)) do |item, list|
    # list[item] += 1
  # end
  items_hash = {}
  items_array.each do |item|
  items_hash[item] = 0
 end
 p items_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: push new key/value pair or item to the hash
# output: hash containing grocery list

#our_list = grocery_list("carrots apples cereal pizza pizza pizza pizza")

def add_item(our_list, item, quantity=nil)
  our_list.store(item, quantity)
  p our_list
end

#add_item(our_list, "peas", 2)

# Method to remove an item from the list
# input: item name
# steps: pop item from the list
# output: hash containing remaining items

def remove_item(our_list, item)
  our_list.delete(item)
  p our_list
end

#remove_item(our_list, "apples")

# Method to update the quantity of an item
# input: the item (key) and the new quantity (value)
# steps: reassign the value of a hash key
# output: hash containing updated items

def update_item(our_list, item, quantity)
  our_list[item] = quantity
  p our_list
end

#update_item(our_list, "cereal", 1)

# Method to print a list and make it look pretty
# input: the hash of a grocery list
# steps: print to console in a form other than just itself
# output: a pretty list


def print_list(our_list)
  our_list.each {|item, quantity| p "#{item}: #{quantity}"}
end

#print_list(our_list)

second_list = grocery_list("lemonade tomatoes onions ice_cream")
update_item(second_list, "lemonade", 2)
update_item(second_list, "tomatoes", 3)
update_item(second_list, "onions", 1)
update_item(second_list, "ice_cream", 4)
remove_item(second_list, "lemonade")
update_item(second_list, "ice_cream", 1)
print_list(second_list)