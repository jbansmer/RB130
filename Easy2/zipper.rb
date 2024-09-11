# Define a method that functions like Array#zip. The method should take two same-length arrays and merge them into 2-element arrays using like-indexed values from each array. The original arrays should not be modified and the method should return an array of all 2-element arrays.

def zip(array1, array2)
  zipped = []
  array1.length.times do |idx|
    zipped << [array1[idx], array2[idx]]
  end
  zipped
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]