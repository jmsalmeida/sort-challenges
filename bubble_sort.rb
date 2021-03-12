def swap(list, first, second)
  temp = list[first]
  list[first] = list[second]
  list[second] = temp
end

# Complexidade de Algoritmos
#
# memory = n
# complexity = n + n + (n*n) = n + n^2
#
# Insert sort (ideia original)
# https://www.geeksforgeeks.org/selection-sort/
#
# https://www.geeksforgeeks.org/quick-sort/ - Fazer juntos
# 
# Melhor caso: totalmente ordenado O(n)
# [1,2,3,4,5,5,6]
# Pior caso é ordenado ao inverso O(n^2)
# [10,9,8,7,6,5,4,3,2,1]

while line = gets
  line = line.chomp.split(' ')
  line = line.map { |n| n.to_i }
  reordered_line = line.map { |n| n }

  len = reordered_line.length - 1

  for i in 0..len
    next_number = i + 1

    for j in next_number..len
      if reordered_line[j] < reordered_line[i]
        swap(reordered_line, i, j)
      end
    end
  end

  puts reordered_line
  puts
  puts line
end
