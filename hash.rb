hash = {}
[[1, "a"], [2, "b"], [3, "c"]].each do |k,v|
  hash[k] = v
end

[[1, "a"], [2, "b"], [3, "c"]].inject({}) do |hash, (k,v)|
  hash[k] = v
  hash
end
p hash
