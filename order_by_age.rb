hash = {}
hash.compare_by_identity
total = gets.chomp.to_i
total.times do
	input = gets.split
	hash[input[0].to_i] = input[1]
end
puts hash
