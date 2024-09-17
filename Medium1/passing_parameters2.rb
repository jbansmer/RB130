birds = %w(raven finch hawk eagle)
# p birds # => ['raven','finch','hawk','eagle']

# raven, finch, hawk, eagle = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p hawk # => 'hawk'
# p eagle # => 'eagle'

# raven, finch, *raptors = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p raptors  # => ['hawk','eagle']

# Based on the examples shown above, write a method that takes an array as an argument. The method should yield the contents of the array to a block, which should assign your block parameters in such a way that it ignores the first two elements, and groups all remaining elements as a raptors array.

# def list_birds(birds, raptors)
#   yield(birds, raptors)
# end

# list_birds(birds, raptors) do
#   result = []
#   birds.each { |bird| result << bird if raptors.include? bird }
#   puts result.join(', ')
# end

# add LS solution
# ...

def ls_list_birds(birds)
  yield(birds)
end

ls_list_birds(birds) do |_, _, *raptors|
  puts raptors.join(', ')
end

# LS solution does not require a pre-defined raptors variable.