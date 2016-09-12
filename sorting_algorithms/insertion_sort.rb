def insertion_sort(arr)
  1.upto(arr.size-1) do |i|
    j = i
    elem = arr[i]
    while j > 0 && arr[j-1] > elem
      arr[j] = arr[j-1]; j-=1
    end
    arr[j] = elem
  end
  arr
end

rand_arr = (1..10000).to_a.shuffle
t1 = Time.now
insertion_sort(rand_arr)
t2 = Time.now
puts t2-t1
