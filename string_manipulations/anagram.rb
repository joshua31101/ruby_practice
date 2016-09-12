def anagram?(s1, s2)
  return false if s1.size != s2.size
  s1 = s1.split('').sort
  s2 = s2.split('').sort
  s1 == s2
end
