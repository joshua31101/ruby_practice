def quick(arr, lb, ub)
  return if ub <= lb
  pivot = arr[ub]
  i, j = lb-1, ub
  loop do
    loop do i+=1; break if i > ub || pivot <= arr[i]; end
    loop do j-=1; break if j <= lb || arr[j] <= pivot; end
    arr[i], arr[j] = arr[j], arr[i]
    break if j <= i
  end
  arr[j], arr[i], arr[ub] = arr[i], pivot, arr[j]
  quick(arr, lb, i-1)
  quick(arr, i+1, ub)
end

def quicksort(arr)
  quick(arr, 0, arr.size-1)
  arr
end

arr = (1..100000).to_a.shuffle
t1 = Time.now
quicksort(arr)
t2 = Time.now
puts t2-t1
