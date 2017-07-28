# DBC Week 5
# David Skaggs
# 5.6 Solving Problems with Data Structures

# Release 0: Implement a Simple Search
# Write a method that takes an array of INT and and INT to search for. The method should return the index of the item, or nil if the integer is not present in the array.

def search(arr, i)
  counter = 0
  arr_index = nil
  until counter >= arr.length
    if arr[counter] == i
      arr_index = counter
    end
    counter += 1
  end
  arr_index
end

# Release 1: Calculate Fibonacci Numbers
# Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms.

def fib_sequence(num)
  arr = [0, 1]
  while num > arr.length
    arr.push(arr[-1] + arr[-2])
  end
  arr
end