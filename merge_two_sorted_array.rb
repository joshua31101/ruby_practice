def print_arr(arr, i)
  while i < arr.size
    print "#{arr[i]} "; i+=1
  end
end

gets.split
arr1 = gets.split
arr2 = gets.split

i=0; j=0
until i == arr1.size or j == arr2.size
  if arr1[i].to_i < arr2[j].to_i
    print "#{arr1[i]} "; i+=1
  else
    print "#{arr2[j]} "; j+=1
  end
end

if i != arr1.size
  print_arr(arr1, i)
else
  print_arr(arr2, j)
end
