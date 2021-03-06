# DBC Week 6
# 6.3 Attributes
# David Skaggs

# Release 0: Bring Santa to Life
# Pseudocode:
# Define a Santa class
# Class should have three instance methods:
  # - a 'speak' method that will print "Ho, ho, ho! Haaaappy Holidays!"
  # - a 'eat_milk_and_cookies' method that takes a cookie type as a parameter and prints "That was a good [type of cookie]"
  # - a initialize method that prints "initializing Santa instance"

# Release 1: Give Santa Attributes for Christmas
# Pseudocode:
 # Add the following attributes to Santa class:
  # gender, which will be a string passed in on initialization
  # ethnicity, which will be a string passed in on initialization
  # reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  # age, which is not passed in on initialization and defaults to 0

# Release 2: Change an Attribute with a Method

class Santas
  attr_accessor :gender
  attr_reader :age, :ethnicity
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end

  def speak
    "Ho, ho ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age = @age.next
  end

  def age
    @age = rand(140)
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.push(@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
  end
end

santas_list = []
cookie_type_arr = ["chocolate-chip", "snickerdoodle", "biscotti", "sugar", "peanut butter", "triple-chocolate-chunk", "vegan cookie"]
genders = ["neutral", "agender", "female", "bigender", "male", "gender fluid", "N/A", "non-binary", "N/A", "prefer not to say", "man", "woman"]
ethnicities = ["black", "Arab", "Latino", "white", "Japanese-African", "prefer not to say", "Native American", "N/A", "Spanish colonial crusader", "North African", "Nordic", "indiginious Canadian", "new yorker", "meditterrean", "jewish", ""]

def santa_maker(num_of_santas, gender_arr, ethnicity_arr, santa_arr)

  puts "----------------------------------------------"
  puts "Number of Santas at SantaCon this year: #{num_of_santas}"
  puts "----------------------------------------------"
  puts

  i = 0
  loop do
    break if i == num_of_santas
    santa_arr << santa = Santas.new(gender_arr.sample, ethnicity_arr.sample)
    i += 1
  end
end

def print_santas(santas, cookie_types)
  santas.each do |santa|
    puts
    puts "New Santa..."
    puts "Santa Age: #{santa.age}"
    puts "This Santa is #{santa.gender} & is of #{santa.ethnicity} ethnicity!"
    puts "#{santa.speak}"
    puts "It's Santa's birthday, Santa is now: #{santa.celebrate_birthday} years old!!!"
    puts "#{santa.eat_milk_and_cookies(cookie_types.sample)}"
    "#{santa.get_mad_at("Dasher")}"
  end
end

# Driver Code -----------------------------------------------
# new_santa = Santa.new("male", "white")
# another_santa = Santa.new("female", "Latino")
# next_santa = Santa.new("non-binary", "Prefer not to say")
# lil_santa = Santa.new("male", "Native American")
# lil_santa.speak
# lil_santa.eat_milk_and_cookies("chocolate")
# lil_santa.eat_milk_and_cookies = "vanilla"
# lil_santa.get_mad_at("Dasher")
# lil_santa.update_gender = "female"
# lil_santa.gender = "female"
# lil_santa.celebrate_birthday
# p lil_santa.age
# p lil_santa.celebrate_birthday
# santa_maker(rand(100), genders, ethnicities, santas_list)
# print_santas(santas_list, cookie_type_arr)
