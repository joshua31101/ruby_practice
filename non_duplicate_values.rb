def non_duplicate_values(values)
  result = []
  values.each { |num| result << num if values.count(num) == 1 }
  result
end

def non_dup(values)
  values.find_all { |x| values.count(x) == 1 }
end

p non_duplicate_values([1,2,3,4,5,5,4,3,4])
p non_dup([1,2,3,4,5,5,4,3,4])
