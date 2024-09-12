# Define a method #each_cons that takes a collection and passes consecutive elements (2 at a time) to the block. The block executes based on the pair of arguments it gets passed and the method should return nil.

def each_cons(collection)
  (collection.size - 1).times do |idx|
    yield(collection[idx], collection[idx + 1])
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil