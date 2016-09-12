def selection_sort(arr)
  0.upto(arr.length-2) do |i|
    min_index = i
    (i+1).upto(arr.length-1) do |j|
      min_index = j if arr[j] < arr[min_index]
    end
    arr[min_index], arr[i] = arr[i], arr[min_index]
  end
  arr
end

rand_arr = (1..10000).to_a.shuffle
t1 = Time.now
selection_sort(rand_arr)
t2 = Time.now
puts t2-t1
