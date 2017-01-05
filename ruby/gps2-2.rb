
# Creates a hash from a comma separated string of grocery items
# param list: a comma separated string of grocery items
# returns: grocery_list (hash)
def create_list(list)
 grocery_list = Hash.new
 default_quantity = 1 
 list.split(", ").each do |x|
  grocery_list[x] = default_quantity
 end
 p grocery_list
 return grocery_list
end

# Adds an item to the list
# Parameters: final_list (hash), item_name (string), quantity (int)
def add_update(final_list, item_name, quantity)
  final_list[item_name] = quantity
  p final_list
end

# Removes an item from the list
# Parameters: final_list to modify (hash), item_name to remove (string)
def remove_item(final_list, item_name)
  final_list.delete(item_name)
 p final_list
end

# Prints the specified list
# final_list (hash): the list to print
def prints_list(final_list)
 final_list.each do |key, value|
   puts " You need to buy #{value} #{key}(s)"
 end
end

final_list = create_list("Apple, Carrot")


add_update(final_list,"Lemonade", 2)
add_update(final_list,"Tomato", 3)
add_update(final_list,"Onion", 1)
add_update(final_list,"Ice Cream", 4)

remove_item(final_list, "Lemonade")

add_update(final_list,"Ice Cream", 1)

prints_list(final_list)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # string of items seperated by spaces are stored in hash and given a value of default quantity
 # set default quantity to 1 
 # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a variable for the method "create a list" and add that as a parameter to the add item methods
# output: Original Hash + the added item


# Method to remove an item from the list
# input: parameter is the key that you wish to remove 
# steps: delete that key from the grocery list
# output: hash without the removed key

# Method to update the quantity of an item
# input: final list and key that needs to be updated and the updated value of the key 
# steps:for parameter key assign a new value 
# output: hash with updated value for specified key.

# Method to print a list and make it look pretty
# input:final list
# steps: for each key and value iterate and pass a string that looks pretty
# output: A string that outputs each key and value.
