def two_times
  yield
  yield
end

puts [1,3,5,7].inject(0) {|sum, element| sum+element}
puts [1,3,5,7].inject(1) {|product, elem| product*elem}
puts [1,3,5,7].inject {|sum, elem| sum+elem}
puts [1,3,5,7].inject {|product, elem| product*elem}
puts [1,3,5,7].inject(:+)
puts [1,3,5,7].inject(:-)
two_times { puts "Hi" }

short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next}: #{long_enum.next}"
end

result = []
['a', 'b', 'c'].each_with_index {|w, i| result << [w, i]}
p result

p %w(1 2 3 4 5)
p %w{1 2 3 4 5}
