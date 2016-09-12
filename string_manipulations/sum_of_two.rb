numbers = [2,7,11,15]
target = 26
hash = Hash.new
result = ""

numbers.each_index do |i|
  if hash.key? numbers[i]
    result = "Index at #{hash[numbers[i]]} and #{i}"
    break
  else
    hash[target-numbers[i]] = i
  end
end

puts result
