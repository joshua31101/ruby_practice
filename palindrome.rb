def palindrome?(sentence)
  result = sentence.downcase.gsub(/\s/,'')
  result == result.reverse
end

p palindrome?("Never odd or even")

nested_arr = [[1,2,3,4,5],[5,4,3,2,1]]
hash = Hash[nested_arr[0].zip(nested_arr[1])]
p hash
