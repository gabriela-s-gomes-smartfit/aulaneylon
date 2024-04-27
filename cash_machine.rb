class CashMachine
  def initialize(nome)
    @nome = nome
    @saldo_atual = 0.0
  end

  def adicionar_saldo(valor_digitado)
    @saldo_atual += valor_digitado
  end

  def sacar_dinheiro(valor_saque)
    if valor_saque <= @saldo_atual
      @saldo_atual -= valor_saque
      puts "Sacando a quantia de: R$#{valor_saque}, por favor, aguarde!"
      sleep 5
      puts "#{@nome}, você sacou R$#{valor_saque}. Seu saldo atual é de R$#{@saldo_atual}"
    else
      puts "Saldo insuficiente."
    end 
  end

  def saldo_atual
    @saldo_atual
  end
end

puts "\n______Banco__________"
puts "\nOlá! Qual é o seu nome?"
nome = gets.chomp

sistema = Caixa.new(nome)

loop do
  puts "\n______Banco__________"
  puts "\nOlá, #{nome}! Escolha uma opção:"
  puts "1. Ver saldo"
  puts "2. Adicionar dinheiro"
  puts "3. Sacar dinheiro"
  puts "4. Sair"

  opcao_usuario = gets.chomp.to_i

  case opcao_usuario
  when 1
    puts "#{nome}, seu saldo atual é de R$#{sistema.saldo_atual}"
  when 2
    puts "Qual o valor que deseja adicionar, #{nome}?"
    valor_digitado = gets.chomp.to_f
    sistema.adicionar_saldo(valor_digitado)
    puts "Adicionando o saldo na sua conta, por favor aguarde um tempo"
    sleep 5
    puts "O valor de R$#{valor_digitado}, foi colocado na sua conta, #{nome}! Seu saldo atual é de R$#{sistema.saldo_atual}"
  when 3
    puts "Qual o valor que deseja sacar, #{nome}?"
    valor_saque = gets.chomp.to_f
    sistema.sacar_dinheiro(valor_saque)
  when 4
    puts "Obrigado por escolher nosso banco, #{nome}! Volte sempre!"
    return
  else
    puts " Opção não encontrada."
  end
end
