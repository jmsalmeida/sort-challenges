# insertion sort
#
# O algoritmo percorre o array e usa o elemento atual como referência.
# Assim, ele vai comparando a referência com os elementos anteriores (que já estão ordenados);
# Se o elemento for maior do que a referência, eles trocam de posição.
# Caso não seja maior, significa que aquela é a condição de parada para esta referência, pois
# o array já está ordenado e tudo que vem antes do elemento atual também será menor.
#
# Todos os elementos que estão atrás da referência atual já estão ordenados entre si. O algoritmo
# só precisa descobrir em qual posição ele irá "inserir" a referência atual.
# 
# Melhor caso: totalmente ordenado O(n)
# [1,2,3,4,5,5,6]
# Pior caso é ordenado ao inverso O(n^2)
# [10,9,8,7,6,5,4,3,2,1]
#

while line = gets
  line = line.chomp.split(' ')
  line = line.map(&:to_i)

  len = line.length - 1

  for i in 1..len
    key = line[i]
    j = i - 1

    while j >= 0 && line[j] > key
      line[j + 1] = line[j]
      j -= 1
    end
    
    line[j+1] = key
  end

  puts line.to_s
end
