lista_numeros = [2, 1, 3, 5, 4]
lista_letras = ['b', 'a', 'd', 'c', 'e']

def exerc1(lista_numeros)
  lista_numeros.each { |letras| print letras, ' ' }
  puts
end

def exerc2(lista_letras)
  lista_letras.reverse.each { |letras| print letras, ' ' }
  puts
end

def exerc3(lista_numeros)
  lista_numeros.sort.each { |numeros| print numeros, ' ' }
  puts
end

def exerc4(lista_letras)
  lista_letras.sort.each { |letras| print letras, ' '}
  puts
end

exerc1(lista_numeros)
exerc2(lista_letras)
exerc3(lista_numeros)
exerc4(lista_letras)
