class Livro

	attr_reader :titulo, :preco, :ano_lancamento, :possui_reimpressao

	def initialize titulo, preco, ano_lancamento, possui_reimpressao
		@titulo = titulo
		@ano_lancamento = ano_lancamento
		@possui_reimpressao = possui_reimpressao
		@preco  = calcula_valor preco
	end

	def calcula_valor preco
		return preco * 0.95  if (@ano_lancamento < 2006 && !possui_reimpressao?)
		return preco * 0.90 if (@ano_lancamento < 2006 && possui_reimpressao?)
		return preco * 0.96 if (@ano_lancamento >= 2006 && @ano_lancamento <= 2010)
		preco
	end

	def possui_reimpressao?
		@possui_reimpressao
	end

	def to_csv 
		"#{titulo},#{ano_lancamento},#{preco}"
	end

end