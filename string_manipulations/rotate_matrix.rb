def rotate(arr, row, col)
  temp = Array.new(row) {Array.new(col)}
  arr.each_index do |i|
    arr[i].each_index do |j|
      temp[j][(row-1)-i] = arr[i][j]
    end
  end
  arr = temp
end

def print_multi_array(arr)
  arr.each do |row|
    row.each do |col|
      print "%-3s" % col
    end
    puts
  end
end

arr = [[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20],[21,22,23,24,25]]
print_multi_array(arr)
puts "After the 90 degree rotation..."
print_multi_array(rotate(arr, 5, 5))
print_multi_array(arr)
