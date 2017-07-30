def merge(array, a, b, c)
  left = array[a..b]
  right = array[b+1..c]

  i = 0
  j = 0
  k = a
  while (i < left.length) && (j < right.length) do
    if (left[i] < right[j])
      array[k] = left[i]
      i += 1
    else
      array[k] = right[j]
      j += 1
    end
    k += 1
  end

  while i < left.length do
    array[k] = left[i]
    i += 1
    k +=1
  end

  while j < right.length do
    array[k] = right[j]
    j +=1
    k +=1
  end
end


def mergesort(array, a, c)
  b = ((a+c)/2).floor
  if (a < c)
    mergesort(array, a, b)
    mergesort(array, b+1, c)
    merge(array, a, b, c)
  end
  p array
end

array = [5, 6, 2, 1, 4, 9, 7, 8, 3]
mergesort(array, 0, array.length-1)
