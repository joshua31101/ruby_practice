result = []
hash = {}
arr = [-1, 0, 1, 2, -1, -4]

arr.each_index do |i|
  target = -arr[i]
  (i+1).upto(arr.length-1) do |j|
    if hash.key? arr[j]
      result << [i, hash[arr[j]], j]
    else
      hash[target-arr[j]] = j
    end
  end
  hash = {}
end

p result.map { |x,y,z| [arr[x], arr[y], arr[z]].sort }.uniq
