class CelsiusConverter

  def celsius_para_fahrenheit(celsius)
    (celsius * 9/5) + 32
  end

  def celsius_para_kelvin(celsius)
    celsius + 273.15
  end
end

conversor = CelsiusConverter.new
puts "\n______Conversor______Celsius____To___F___And___K"
puts "\n Olá! Esse script converte Celsius para Fahrenheit ou Kelvin. Qual você deseja ver?"
puts "1. Quero converter Celsius para Fahrenheit"
puts "2. Quero converter Celsius para Kelvin"
puts "3. Não quero converter nada"

opcao_escolhida = gets.chomp.to_i

case opcao_escolhida
when 1
  puts "Digite a temperatura em Celsius: "
  celsius = gets.chomp.to_f
  resultado = conversor.celsius_para_fahrenheit(celsius)
  puts "#{celsius} °C equivalem a #{resultado} °F."
when 2
  puts "Digite a temperatura em Celsius: "
  celsius = gets.chomp.to_f
  resultado = conversor.celsius_para_kelvin(celsius)
  puts "#{celsius} °C equivalem a #{resultado} K."
when 3
  puts "Beleza, então até outro dia"
  return
else
  puts "Não tem essa opção..."
end

puts "até mais =]"
