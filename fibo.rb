def fib_up_to(max)
  i_1, i_2 = 1, 1
  while i_1 < max
    print i_1, " "
    i_1, i_2 = i_2, i_1+i_2
  end
end

fib_up_to(1000)
