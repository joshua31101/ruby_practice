def mergesort(container)
  return container if container.size <= 1
  mid   = container.size / 2
  left  = container[0...mid]
  right = container[mid...container.size]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? or right.empty?
    left.first <= right.first ? sorted << left.shift : sorted << right.shift
  end
  sorted + left + right
end

rand_arr = (1..1000000).to_a.shuffle
t1 = Time.now
result = mergesort(rand_arr)
t2 = Time.now
puts t2-t1
