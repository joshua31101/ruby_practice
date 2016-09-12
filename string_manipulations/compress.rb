def compress(str)
  result = ""
  result << str[0]
  count = 1
  1.upto(str.size-1) do |i|
    if str[i] == str[i-1]
      count += 1
    else
      result << count.to_s; result << str[i]
      count = 1
    end
  end
  result << count.to_s
end

puts compress("aabcccccaaa")
