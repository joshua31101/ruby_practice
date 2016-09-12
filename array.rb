class Array
  def find
    each do |i|
      return i if yield(i)
    end
    nil
  end
end

puts [1, 2, 3, 4, 5].find { |i| i>3 }
