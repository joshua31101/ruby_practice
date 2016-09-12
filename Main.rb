def iterate_arr(arr1, arr2)
  i,j = 0,0
  while i < arr1.length && j < arr2.length
    if arr1[i] > arr2[j]
      print "#{arr2[j]} "
      j+=1
    else
      print "#{arr1[i]} "
      i+=1
    end
  end
  print_leftover(arr1, i)
  print_leftover(arr2, j)
end

def print_leftover(arr, i)
  if i < arr.length
    (i...arr.length).each do |i|
      print "#{arr[i]} "
    end
  end
end

len_1, len_2 = gets.split
arr_1 = Array.new(len_1.to_i)
arr_2 = Array.new(len_2.to_i)

if len_1 > len_2
  iterate_arr(arr_2, arr_1)
else
  iterate_arr(arr_1, arr_2)
end