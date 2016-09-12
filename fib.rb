def fibo(n)
  result = 0
  n1, n2 = 0, 1
  if n == 0
    return n1
  elsif n == 1
    return n2
  else
    (n-1).times do
      result = n1 + n2
      n1, n2 = n2, result
    end
  end
  result
end

puts fibo(gets.to_i)
