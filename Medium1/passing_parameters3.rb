items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# Given the above code, complete 4 snippets to make the desired output true:

# 1.
gather(items) do |*abc, d|
  puts (abc).join(', ')
  puts d
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# 2.
gather(items) do |a, *bc, d|
  puts a
  puts (bc).join(', ')
  puts d
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3.
gather(items) do |a, *bcd|
  puts a
  puts (bcd).join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# 4.
gather(items) do |a, b, c, d|
  puts "#{a}, #{b}, #{c}, and #{d}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!