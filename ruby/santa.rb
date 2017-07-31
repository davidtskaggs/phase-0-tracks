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

class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    "initializing Santa instance..."
  end

  def speak
    "Ho, ho ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    "That was a good #{cookie_type}"
  end

  def celebrate_birthday=(age)
    @age = @age+1
  end

  def get_mad_at=(reindeer_name)
    @reindeer_ranking.slice(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end

  def update_gender=(gender)
    @gender = gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
end

# new_santa = Santa.new("male", "white")
# another_santa = Santa.new("female", "Latino")
# next_santa = Santa.new("non-binary", "Prefer not to say")
# lil_santa = Santa.new("male", "Native American")