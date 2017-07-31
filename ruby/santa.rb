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

class Santa
  def initialize
    "initializing Santa instance..."
  end

  def speak
    "Ho, ho ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    "That was a good #{cookie_type}"
  end
end