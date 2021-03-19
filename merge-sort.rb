def mergesort(list, first, last)
  if last - first > 0
    middle = (last + first) / 2
    mergesort(list, first, middle)
    mergesort(list, middle + 1, last)
    merge(list, first, middle, last)
  end
end

def merge(list, first, middle, last)
  left = list[first..middle]
  right = list[(middle+1)..last]

  index_left = 0
  index_right = 0

  for k in first..last
    if index_left >= left.length
      list[k] = right[index_right]
      index_right += 1
    elsif index_right >= right.length
      list[k] = left[index_left]
      index_left += 1
    elsif left[index_left] < right[index_right]
      list[k] = left[index_left]
      index_left += 1
    else
      list[k] = right[index_right]
      index_right += 1
    end
  end
end

lista = [34, 7, 21, -14]
mergesort(lista, 0, lista.length - 1)

puts lista.to_s
