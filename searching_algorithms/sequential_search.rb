def recursive_search(arr, target, index)
  return true if target == arr[index]
  return false if index >= arr.length
  recursive_search(arr, target, index+1)
end

def search(arr, target)
  recursive_search(arr, target, 0)
end

arr = (1..1000).to_a
target = 1000
t1 = Time.now
arr.each_index { |i| break if arr[i] == target }
#p search(arr, target)
t2 = Time.now
puts "The elapsed time of sequential search for ten milion data is #{t2-t1}"
