# GPS 2.2
# David Skaggs

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Take string parameter and split into array
  # Create an empty hash
  # Use each block to iteratate though array and add items to hash and add value of 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def new_list(string)
  items = string.split(" ")
  list_item = {}

  items.each do |item|
    list_item[item] = 1
  end
  list_item
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: set item as key and quantity as value in hash
#}
#use the push method to add onto array from hash
# output: hash

def add_to_list (list, item, quantity)
  list[item] = quantity
end

# Method to remove an item from the list
# input: item and using array as a global variable
# steps: use delete or delete_if to remove an item from hash
# output: remove the item from the list.

def remove_from_list (list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps: set the new quantity as the value to the item key in hash
# output: Updated hash

def update_quantity (list, item, quantity)
  list[item] = quantity
end

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through the hash using an each metohd
# output: print out the hash keys and values

def print_list(list)
  counter = 1
  list.each do|item, quantity|
    puts "Item #{counter}: #{item.capitalize} - Quantity: #{quantity}"
    counter += 1
  end
end

# Driver code
shopping_list = new_list("carrots apples cereal pizza")
add_to_list(shopping_list, "Lemonade", 2)
add_to_list(shopping_list, "Tomatoes", 3)
add_to_list(shopping_list, "Ice Cream", 4)
update_quantity(shopping_list, "apples", 5)
print_list(shopping_list)