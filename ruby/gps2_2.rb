# GPS 2.2
# David Skaggs

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # list[array] = string.split
  # set default quantity = 1
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
# steps: hash = { quantity: quantity,
#item: item
#}
#use the push method to add onto array from hash
# output: array

def add_to_list (list, item, quantity)
  list[item] = quantity
end

# Method to remove an item from the list
# input: item and using array as a global variable
# steps: use delete or delete_if to remove an item from array
# output: remove the item from the list.

def remove_from_list (list, item)
  list_item[item] = quantity
end

# Method to update the quantity of an item
# input: item. quantity
# steps: iterate through the array
#specify a specific item, then specify the quantity that you want to change it to.
# output: update the quantity for the item

def update_quantity (list, item, quantity)
  list_item[item] = quantity
  list_item
end

# Method to print a list and make it look pretty
# input: global array
# steps: iterate through the array using an each metohd
# output: print out the hash specify the quantity and item and keys and values

def print_list(list)
  counter = 1
  list.each do |item, quantity|
    puts "Item #{counter}: #{item.capitalize} - Quantity: #{quantity}"
    counter += 1
  end
end

# shopping_list new_list("carrots apples cereal pizza")
# add_to_list(shopping_list, "Lemonade", 2)
# add_to_list(shopping_list, "Tomatoes", 3)
# add_to_list(shopping_list, "Ice Cream", 4)
# update_quantity(shopping_list, "apples", 5)
# print_list