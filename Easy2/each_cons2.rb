# Update the #each_cons method to accept any number of arguments to pass to the block:

def each_cons(collection, qty)
  return nil if qty > collection.size

  case qty
  when 1
    collection.each { |ele| yield(ele) }
  when 2
    (collection.size - 1).times do |idx|
      yield(collection[idx], collection[idx + 1])
    end
  else
    idx = 0
    collection.each do |ele|
      yield(ele, *collection[(idx + 1)..(idx + (qty - 1))])
      idx += 1
      break if (idx + qty) > collection.size
    end
  end
  nil
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}