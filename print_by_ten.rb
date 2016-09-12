def sum(a, b)
  return a if a == b
  a + sum(a+1, b)
end

p sum(1,10)

[1,2,3].each_with_index { |e,i| puts "#{e} at #{i}"  }
0.upto(3) {puts 'hey'}
lion_name = ["Charles","Robert","John","Miranda","Jessica"]
result = []
(lion_name.size-1).downto(0) { |i| result << lion_name[i] }
p result
p [5,4,3,2,1].sort

numbers = [1,2,2,3,3,4,5,5]
result = []
numbers.each { |n| result << n if result.count(n) == 0 }
p result

p [1,2,3].map {|n| n*=3}
p [1,2,3].collect {|n| n*=3}
