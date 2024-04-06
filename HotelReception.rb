class HotelReception

	def initialize
		puts "Bem vindo ao Hotel Andorinha, Por favor, insira os dados que pedimos."
		puts "Qual seu nome?"
		@name = gets.chomp
		if @name == "Neylon"
			puts "Esse nome não é bem vindo aqui no hotel!!!!! >:( "
			return
		end 
		puts "É bom ter você por aqui, #{@name}!! E qual é seu documento?"
		@document = gets.chomp
		puts "Estamos finalizando, de onde você é?"
		@country = gets.chomp
		puts "Por último, quantos dias você irá ficar no nosso hotel, #{@name}?"
		@hotel_days = gets.chomp.to_i
	end 

	def template_generator
		return if @name = "Neylon"
	 puts "#{@name}, é um prazer receber você como nosso hóspede hoje, Segue aqui um resumo da sua estadia conosco."
	 p "Documento informado: #{@document}"
	 p "Local informado: #{@country}"
	 p "Dias que irá ficar: #{@hotel_days}"
	 puts "Agora, é só confirmar e aproveitar sua estadia :] "

	end 
	
end 

new_client = HotelReception.new
new_client.template_generator

