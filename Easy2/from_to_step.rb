# Define a method that functions like Range#step, except that it operates by taking 3 arguments: the starting value, the ending value, and the step value applied to each iteration.
# Range#step calls the 0 element, then the step value index value, then twice the step value index, repeating until the end of the range. The method returns self (the range).

def step(first, last, step_value)
  all_values = (first..last).to_a
  multiplier = 0
  until (step_value * multiplier) >= all_values.size
    yield(all_values[step_value * multiplier])
    multiplier += 1
  end
  return first, last
end

step(1, 10, 3) { |value| puts "value = #{value}" }
step('a', 'j', 3) { |value| puts "value = #{value}" }

# The custom #step method returns the first and last values originally passed in as arguments, just as Range#step returns the original range used to call it.
