hash = Hash.new {|hash, key| hash[key] = Array.new}
File.readlines("words.txt").map do |words|
  words.split.each_with_index do |word, line|
    hash[word.gsub(/[.,()'"]/, "")] << line+1
  end
end

hash.each {|k,v| puts "#{k}: #{v.join(" ")}"}
