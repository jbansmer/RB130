# Define an #each_with_index method that passes each element and its associated index to the block. It should return the original collection.

def each_with_index(collection)
  idx = 0
  collection.each do |ele|
    yield(ele, idx)
    idx += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# desired output:
# 0 -> 1
# 1 -> 3
# 2 -> 36
# true