class HotelReception

	def initialize
		puts "----------------------------------------------------------------------"
		puts "Bem vindo ao Hotel Andorinha Campinas, Por favor, insira os dados que pedimos."
		puts "----------------------------------------------------------------------"
		puts "Qual seu nome?"
		@name = gets.chomp
		if @name.include?("Neylon")
			puts "Esse nome não é bem vindo aqui no hotel!!!!! >:( "
			return
		end 
		puts "É bom ter você por aqui, #{@name}!! E qual é seu documento?"
		@document = gets.chomp
		puts "Estamos finalizando, de onde voce é?"
		@country = gets.chomp
		puts "Por último, quantos dias você irá ficar no nosso hotel, #{@name}?"
		@hotel_days = gets.chomp.to_i
	end 

	def template_generator
		return if @name.include?("Neylon")
	 puts "#{@name}, é um prazer receber você como nosso hóspede hoje, Segue aqui um resumo da sua estadia conosco."
	 puts "---Documento informado: #{@document}"
	 puts "---Local informado: #{@country}"
	 puts "---Dias que irá ficar: #{@hotel_days}"
	 puts "Agora, é só confirmar e aproveitar sua estadia, bem vindo a Campinas :] "

	end 
	
end 

new_client = HotelReception.new
new_client.template_generator

