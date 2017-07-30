# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |i|
  print i, " * "
end

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----

def is_item_available(is_item_included, arr)
  arr.each do |item|
    return arr.include?(is_item_included) == true
  end
end

# Driver Code:
# is_item_available("CB radio", zombie_apocalypse_supplies)

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----

def is_item_available( arr)
  arr.each do |i|
    if i = 5
      arr.delete_at(5)
    end
  end
  arr
end

# Driver Code:
# is_item_available(zombie_apocalypse_supplies)

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove", "solar battery", "flashlight"]
# ----

def is_item_available(arr1, arr2)
  arr1.each do |item|
    if arr2.index(item)
      arr2.delete(item)
    end
  end
  arr2
end

# Driver Code
# is_item_available(zombie_apocalypse_supplies, other_survivor_supplies)

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |k, v|
  puts "#{k}'s went extint in the year: #{v}"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----

extinct_animals.delete_if {|k, v| v >= 2000 }

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----

extinct_animals.each {|k, v| extinct_animals[k] = v - 3}

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

def is_extinct?(animal, hash)
  hash.each do |k, v|
  return hash.has_key?(animal) == true
  end
end

# Driver Code:
# is_extinct?("Andean Cat", extinct_animals) => false
# is_extinct?("Dodo", extinct_animals) => true
# is_extinct?("Saiga Antelope", extinct_animals) => false

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

not_extinct = extinct_animals.shift

# Driver Code:

# p not_extinct => ["Passenger Pigeon", 1914]
# p extinct_animals => {"Tasmanian Tiger"=>1936, "Eastern Hare Wallaby"=>1890, "Dodo"=>1662, "Pyrenean Ibex"=>2000, "West African Black Rhinoceros"=>2011, "Laysan Crake"=>1923}