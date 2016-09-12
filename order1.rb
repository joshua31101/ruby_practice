total = gets.chomp.to_i
result = []
total.times { result << gets.chomp.to_i }
result.sort!
puts result