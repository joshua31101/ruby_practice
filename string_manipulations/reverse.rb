def reverse!(str)
  temp = ''
  (str.size-1).downto(0) do |i|
    temp << str[i]
  end
  str = temp
end

p reverse!("ABCDE")
