hash = Hash.new(0)
File.readlines("words.txt").map do |line|
  line.split.each do |word|
    hash[word.strip.gsub(/[.,()'"]/, "")] += 1
  end
end
hash = hash.sort {|x,y| y[1] <=> x[1]}
hash.each { |x,y| puts "#{x}: #{y}" }
