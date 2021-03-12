# Selection sort
#
# Instável
# [1,2,5,4,6,5,3]

while line = gets
  line = line.chomp.split(' ')
  line = line.map(&:to_i)

  len = line.length

  for i in 0..(len - 1)
    min_index = i
    next_index = i + 1

    for j in next_index..(len - 1)
      if line[j] < line[min_index]
        min_index = j
      end
    end

    line[i], line[min_index] = line[min_index], line[i]
  end

  puts line.to_s
end
