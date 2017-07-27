# DBC Wee 5:
# 5.3 MP: Iteration

# Release 1: Use each, map, and map!

# create array
colors = ["blue", "red", "green", "yellow"]

# create hash
car = {ford: "taurus",
vw: "cc",
porsche: "cayenne",
chevy: "silverado"
}

# each block for array
colors.each do |color|
  puts color.capitalize
end

# map block for array
new_arr = []
colors.map do |color|
  new_arr << color.swapcase
end

# map! for array
colors.map! do |color|
  color.reverse
end

# each for hash
car.each do |make, model|
  puts "My #{make} #{model} is the best car!!"
end

# Release 2:

# create array
num_array = [1,2,3,4,5,6,7,8,9,10]

# create hash
num_hash = {
  one: 1,
  two: 2,
  three: 3,
  four: 4
}

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

num_array.delete_if {|x| x > 5}

car.delete_if {|k, v| v == "cayenne"}

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

num_array.keep_if {|x| x <= 4}

num_hash.keep_if {|key, value| key == :two}

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

even_numbers = num_array.select {|num| num.odd?}

new_hash = num_hash.reject {|key, value| key.length > 3}

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

arr = num_array.take_while {|x| x < 5}





