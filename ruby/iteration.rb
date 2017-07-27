# colors = ["blue", "red", "green", "yellow"]

# colors.each do |color|
#   puts color.capitalize
# end


# new_arr = []
# colors.map do |color|
#   new_arr << color.swapcase
# end
# # p new_arr

# colors.map! do |color|
#   color.reverse
# end
# # p colors

# car = {ford: "taurus",
# vw: "cc",
# porsche: "cayenne",
# chevy: "silverado"
# }

# car.each do |make, model|
#   puts "My #{make} #{model} is the best car!!"
# end

# Release 2:
num_array = [1,2,3,4,5,6,7,8,9,10]

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).


# num_array.delete_if {|x| x > 5}


# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

# num_array.keep_if {|x| x <= 4}



# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

# even_numbers = num_array.select {|num| num.odd?}
# p even_numbers

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

# arr = num_array.take_while {|x| x < 5}
# p arr




