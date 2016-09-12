def binary_search(arr, target, first, last)
  mid = (first+last) / 2
  return true if arr[mid] == target
  return false if first > last
  if target < arr[mid]
    binary_search(arr, target, first, mid-1)
  else
    binary_search(arr, target, mid+1, last)
  end
end

arr = (1..10000000).to_a
t1 = Time.now 
p binary_search(arr, 10000000, 0, arr.length-1)
t2 = Time.now
puts "The elapsed time of binary search for ten milion items is #{t2-t1}"
