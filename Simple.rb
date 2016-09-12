def find_frequency(sentence, word)
  count = 0
  sentence.downcase.split.each do |w|
    if w == word
      count+=1
    end
  end
  count
end

def find_freq(sentence, word)
  sentence.downcase.split.count(word)
end

puts find_frequency("Ruby is The best language in the World", "the")
puts find_freq("Ruby is The best language in the World", "the")

def hey(x)
  raise ArgumentError if x==0
end
hey(0)
