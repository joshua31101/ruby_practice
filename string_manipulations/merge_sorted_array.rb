arr1 = [1,3,5,7,9]
arr2 = [2,4,6,8]
n = arr1.length
m = arr2.length
i = n-1
j = m-1
sorted = []
index = n+m-1 

while index >= 0
  if j < 0 || (arr1[i] > arr2[j] && i >= 0)
    sorted[index] = arr1[i]
    i-=1
  else
    sorted[index] = arr2[j]
    j-=1
  end
  index-=1
end
p sorted
