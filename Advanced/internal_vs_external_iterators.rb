# numbers = [0, 1, 2, 3, 4, 5, 6].each

# numbers.each_with_object(1) do |num, prod|
#   num.downto(1) do |n|
#     prod *= n
#   end
#   puts prod
# end

number = Enumerator.new do |yielder|
  prod = 1
  num = 0
  loop do
    num == 0 ? 1 : prod *= num
    yielder << prod
    num += 1
  end
end

7.times do |num|
  puts "#{num}: #{number.next}"
end

7.times do |num|
  puts "#{num}: #{number.next}"
end

number.rewind

7.times do |num|
  puts "#{num}: #{number.next}"
end

number.each_with_index do |num, index|
  puts "#{index}: #{num}"
  break if index == 6
end