def sort_string(string)
  result = string.split.sort {|a, b| a.length <=> b.length}
  result.join(' ')
end

puts sort_string("abc ab a")
