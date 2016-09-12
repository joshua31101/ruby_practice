def sum_of_cubes(a, b)
  result = 0
  (a..b).each do |n|
    result += (n*n*n)
  end
  result
end

def sum_of_cubes1(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

p sum_of_cubes1(1,3)
