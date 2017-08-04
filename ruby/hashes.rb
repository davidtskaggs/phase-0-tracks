# 5.2: Data Structures
# Release 2: pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# declare variable client information and set it equal to an empty hash
client_information = {}

# ask user for client's name
puts "Please enter client name:"
# store name in variable (str)
client_information[:client_name] = gets.chomp

# ask user for client's age
puts "Please enter client age:"
# store age as variable (int)
client_information[:client_age] = gets.chomp.to_i

# ask user for client's number of children
puts "Please enter client's number of children':"
# store number of children as variable (int)
client_information[:client_kids] = gets.chomp.to_i

# ask user for client's decor theme
puts "Please enter client's decor theme:"
# store decor theme as variable (str)
client_information[:client_decor_theme] = gets.chomp

# ask user if client has pet's (true or false)
puts "Please enter if client has pet's (true or false):"
# store response as boolean variable
client_information[:client_pets] = gets.chomp

# print hash
puts client_information
# ask user if anything needs to be updated (type 'none' to exit)
puts "Does anything need to be updated? (type 'none' to exit):"

# store response as variable
update_key = gets.chomp.to_sym

# IF user does not type none, ask "What is the updated value?"
if update_key != "none"
  puts "What is the update for #{update_key}:"
  # store response as variable
  update_value = gets.chomp.to_sym
  # update hash with updated value
  client_information[update_key] = update_value
  # return hash
  client_information
# ELSE return hash
else
  client_information
end

require 'pp'
pp client_information