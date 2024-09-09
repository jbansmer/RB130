# Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

def missing(array)
  missed_numbers = (array[0]..array[-1]).to_a
  missed_numbers.select! do |num|
    !array.include?(num)
  end
  missed_numbers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# Further Exploration:
# Solve the problem without using a method that requires a block:

def missing(array)
  all_possible_numbers = (array[0]..array[-1]).to_a
  missed_numbers = []

  counter = 0
  loop do
    if !array.include? all_possible_numbers[counter]
      missed_numbers << all_possible_numbers[counter]
    end
    counter += 1
    break if counter == all_possible_numbers.size
  end

  missed_numbers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []