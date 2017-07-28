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