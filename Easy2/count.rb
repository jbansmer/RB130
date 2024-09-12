# Define a #count method that returns the number of elements that return a truthy block value in an arbitrarily long list of arguments:

def count(*args)
  truthy_values = []
  args.each { |value| truthy_values << value if yield value }
  truthy_values.length
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3