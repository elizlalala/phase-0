# # Research Methods

# # I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# Person 2

def my_array_modification_method!(i_want_pets, n)
  i_want_pets.map! {|n| n.is_a?(Integer) ? n + 1 : n}
end

# Identify and describe the Ruby method(s) you implemented.
# I used for .map! - invokes the given block once for each element of self, replacing the element with the value returned by the block.
# Also I said if n is an interger then n + 1

def my_hash_modification_method!(my_family_pets_ages, n)
  my_family_pets_ages.each {|key, value| my_family_pets_ages[key] = value + n}
end
# Identify and describe the Ruby method(s) you implemented.
# it goes through each key and value pair
# then the key will be set to have a new value which is value + n
# in this case n = 2


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 4
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


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #