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

# Release 2: Sort an Array
=begin
1. Choose a simple sorting algorithm to learn about. Bubble sort or insertion sort are good ones for beginners, but you're welcome to be more adventurous.
  - Chosen Sorting Method: Insertion sort

2. Form a conceptual understanding of how the algorithm works. What helps you grasp it? Do visualizations help? How can you find the right materials for yourself?
  - I think it helps to first get an idea of what 'insertion sort' is and how it works. I did this by reading about insertion sort; Reading about its purpose and how it is used before even looking at any code. I think looked at some pseudocode for an insertion sort example. From there, I looked at an example. I think that reading about the purpose of insertion sort before looking at any actual code helped to me to get a better understanding. The visualizations helped after getting an idea from text. I was able to get a good idea of insertion sort from text, docs, and also some video's on Youtube and Udemy.

3. Notice your emotional state as you tackle this algorithm: do you feel frustrated, underqualified, stupid, or overwhelmed? Or is it more like excitement and curiosity? How do you think these feelings affect your ability to learn?
  - I started this challenge late in the evening after a long day of studying. I quickly realize that I didn't have the energy to give to fully devote myself to understanding the concept. UPDATE: It is the next morning, and I feel fresh and ready to tackle a new challenge.

4. Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.
  - Create a method for sorting an array
   - Create each block to iterate through array
    - Create an index variable that is equal to index minus 1
    - WHILE index variable is greater than or equal to 0
      - Break if array accessed at index variable  is less than or equal to current array value
        - Set array accessed at index variable plus 1 equal to array accessed at index variable
        - Decrement index value by 1
          - return a sorted array

5. Implement the sorting method in Ruby.
=end

# Insertion Sort

def sort_arr(array)
  array.each_with_index do |value, index|
    i = index - 1
    while i >= 0
      break if array[i] <= value
      array[i + 1] = array[i]
      i -= 1
    end
    array[i + 1] = value
  end
end
# sort_arr([2,7,4,6,9,1,3,2,7])
# sort_arr([9,1,8,2,7,3,6,5,2])
