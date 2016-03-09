# Person 4

# Input: Array and a character
# Steps:
# => Check each element of the array for the character
# => If an element contains the letter, remove it from the array
# Output
def my_array_deletion_method!(source, thing_to_delete)
  source.each {|x| 
      source.delete(x) if (x.is_a?(String) && x.index(thing_to_delete) != nil)
    }
  p source
end
# Identify and describe the Ruby method(s) you implemented.
# => source.each: to iterate over source array
# => source.delete: to remove the element (x) from the array IF (x) met the following conditions
# => x.is_a?(String): to make sure that the element was a string
# => AND
# => x.index(thing_to_delete): != nil to determine that the character (thing_to_delete) is actually in the string


def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end

# Identify and describe the Ruby method(s) you implemented.
# => source.delete(thing_to_delete): to delete the key/value pair where the key is identical to thing_to_delete

