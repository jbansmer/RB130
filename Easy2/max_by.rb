# Define a #max_by method that iterates through each element in a collection and returns the element with the largest value, as determined by the logic in a given block.

def max_by(collection)
  # return nil if collection.empty?
  max = collection[0]
  collection.each do |ele|
    max = ele if yield(ele) > yield(max)
  end
  max
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
