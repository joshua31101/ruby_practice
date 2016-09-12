h = Hash["one" => 0, "two" => 1, "three" => 2,
   "four" => 3, "five" => 4]
a = Array["one", "two", "three", "four", "five"]
count = 100000

n1 = Time.now.usec

count.times do
    # Two hash lookups.
    v = h["four"]
    v = h["two"]
end

n2 = Time.now.usec

count.times do
    # Two array find operations.
    v = a.index("four")
    v = a.index("two")
end

n3 = Time.now.usec

# Compute milliseconds total.
puts ((n2 - n1) / 1000)
puts ((n3 - n2) / 1000)
