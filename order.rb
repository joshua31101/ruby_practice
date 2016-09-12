nums = gets.split
nums.sort! { |x, y| x.to_i <=> y.to_i }
hash = {'A' => nums[0], 'B' => nums[1], 'C' => nums[2] }
gets.chomp.split('').each { |order| print "#{hash[order]} " }