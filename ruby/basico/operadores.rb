

numero1 = 0
numero2 = 0
total = 0

puts 'Informe o numero 1:'
numero1 = gets.chomp.to_i

puts 'Informe o numero 2:'
numero2 = gets.chomp.to_i

totalSoma = numero1 + numero2
totalSubtracao = numero1 - numero2
totalMulti = numero1 * numero2
totalDiv = numero1 / numero2
puts totalSoma
puts totalSubtracao
puts totalMulti
puts totalDiv

# Operadores de comparação

v1 = 11
v2 = 11

# Maior que >
# Menos que <
# Maior ou igual >=
# Menor ou igual <=
# Diferente !=
# Igual ==
# Igual eql?

puts v1.eql?(v2)