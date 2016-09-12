def unique?(str)
  arr = []
  str.downcase!
  str.each_char do |c|
    if arr.count(c) == 0
      arr << c
    else
      return false
    end
  end
  true
end

puts unique?("HEYh")
