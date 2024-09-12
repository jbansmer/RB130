# Define a #drop_while method, which passes each element in a collection with a given block. The return value of the method is an Array of all falsy block return values:

def drop_while(collection)
  dropped = []
  collection.each_with_index do |value, index|
    unless yield value
      dropped = collection[index..-1]
      break
    end
  end
  dropped
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == [] 