class Estoque

	def initialize
		@livros = []
	end

	def << livro
		@livros << livro if livro
	end

	def exporta_csv
		@livros.each do |livro|
			puts livro.to_csv
		end
	end

	def total
		@livros.size
	end 

	def mais_baratos_que valor
		@livros.select {|livro| livro.preco <= valor}
	end

end