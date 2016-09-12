def reverse(s)
  return s if s.size <= 1
  return reverse(s[1..-1]) + s[0]
end

puts reverse("abcde")
