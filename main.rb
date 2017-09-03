require_relative "livro"
require_relative "estoque"

def imprime_nota_fiscal(livros)
	livros.each do |livro|
		puts "Titulo: #{livro.titulo} - #{livro.preco} - #{livro.possui_reimpressao?}"
	end
end

def imprime_newsletter livros
	livros.each do | livro |
		puts "Newsletter: #{livro.titulo}, #{livro.preco}, #{livro.possui_reimpressao?}" if livro.ano_lancamento < 2000
	end
end


estoque = Estoque.new

agile = Livro.new("Agile Web Development with Rails", 80.00, 2011, true)
cobol = Livro.new("Introdução à Cobol", 100.00, 1999, true)
ruby = Livro.new("Introdução ao Ruby", 100.00, 1999, false)
algoritmos = Livro.new("Algoritmos", 100, 1998, true)

estoque << agile
estoque << ruby
estoque << cobol
estoque << algoritmos
estoque << nil

estoque.exporta_csv
puts estoque.total
valor = 89
retorno = []
retorno = estoque.mais_baratos_que valor
retorno.each { |livro|  puts "#{livro.titulo}"}
